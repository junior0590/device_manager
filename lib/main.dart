import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/new_bloc/views/devices/presentation/view/login_code.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/bloc/notifications_center_cubit.dart';
import 'package:project/new_bloc/views/notifications_center/presentation/view/list/notifications_screen.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_cubit.dart';
import 'package:project/new_bloc/views/devices/presentation/bloc/devices_detail_cubit.dart';
import 'package:project/new_bloc/views/devices/presentation/view/list/devices_screen.dart';
import 'package:project/screens/intro_view/welcome.dart';
import 'package:project/screens/login/login_screen.dart';
import 'package:project/utilities/controller/notification_controller.dart';
import 'package:project/utilities/services/entity/records/records.dart';
import 'package:project/utilities/services/navigatorKey_var_file.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:uni_links/uni_links.dart';
import 'new_bloc/core/di/injector.dart';
import 'utilities/providers/providers.dart';
import 'utilities/classes/classes.dart';
import 'widgets/widgets.dart';

class SimpleBlocObserver extends BlocObserver {

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print(' onCreate |============>>> ${bloc.runtimeType} ${bloc.state} ');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print(' onChange |_______________________________>>> ${bloc.runtimeType} $change ');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print(' onEvent |------------------------------------------------->>>  ${bloc.runtimeType} $event ');
  }
}

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorDetail(details: details);
  };
  await NotificationController.initializeLocalNotifications();

  NotificationController.initializeLocalNotifications();
  NotificationController.startListeningNotificationEvents();

  await EasyLocalization.ensureInitialized();

  await initializeDependencies();

  initializeDateFormatting().then(
    (_) => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<DevicesCubit>(
            create: (context) => injector<DevicesCubit>(),
          ),
          BlocProvider<DevicesDetailCubit>(
            create: (context) => injector<DevicesDetailCubit>(),
          ),
          BlocProvider<NotificationsCenterCubit>(
            create: (context) => injector<NotificationsCenterCubit>(),
          ),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (ctx) => DeviceManagerProvider(),
            ),
          ],
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initialURILinkHandled = false;
  double screenSize = 450;
  Uri? _currentURI;
  StreamSubscription? _streamSubscription;

  Future<void> getStates() async {
    globaldata.state_data = json.decode(
      await rootBundle.loadString('assets/map_states.json'),
    );
  }

  Future<Widget>? loadRecords() async {

    return DevicesScreen();
  }

  Future<Widget> verifyLoginToken() async {
    final storage = await SharedPreferences.getInstance();
    String? token = storage.getString('token');
    int? userId = storage.getInt('userId');

    if (token != null) {
      globaldata.userId = await storage.getInt('userId');
      globaldata.userName = await storage.getString('userName')!;
      globaldata.token = token;
      print("UserID: " + globaldata.userId.toString());
      initialStreamFirebase(globaldata.userId.toString());
      return SplashScreen.future(
        navigateAfterFuture: loadRecords()!,
        image: new Image.asset('assets/images/hytech_sun.png'),
        loadingText: Text('Loading data...',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: globaldata.font)),
        loadingTextPadding: EdgeInsets.all(10),
        styleTextUnderTheLoader: TextStyle(fontSize: 18, color: Colors.white),
        loaderColor: globaldata.greenColor,
        photoSize: 200.0,
        backgroundColor: Colors.black,
      );
    } else {
      return await firstLaunch();
    }
  }

  Future<Widget> firstLaunch() async {
    await getStates();
    final storage = await SharedPreferences.getInstance();
    String? app = storage.getString('appExists');

    if (app.toString() == "yes") {
      return SplashScreen(
        title: Text(""),
        loadingText: Text('Welcome back to Gizmo',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: globaldata.font)),
        loadingTextPadding: EdgeInsets.all(10),
        styleTextUnderTheLoader: TextStyle(fontSize: 18, color: Colors.white),
        useLoader: true,
        loaderColor: globaldata.greenColor,
        photoSize: 200.0,
        image: new Image.asset('assets/images/hytech_sun.png'),
        backgroundColor: Colors.black,
        seconds: 3,
        navigateAfterSeconds: LoginScreen(),
      );
    } else {
      storage.setString("appExists", "yes");
      return Future.value(Welcome());
    }
  }

  Future<void> initMobilisten() async {
    if (Platform.isIOS || Platform.isAndroid) {
      String appKey;
      String accessKey;

      if (Platform.isIOS) {
        appKey =
            "ml4WLD10EJpqIy8HCM8VwQYwawdIrSI5pCqV2SCgoiijdwrMK4yidyK9qI0Gfk8EyIuG%2FzRl2Q8%3D";
        accessKey =
            "uGC4wDFF%2FrspKMplxR2%2F%2Fe7dqjG6XbD4XNyOgBUhNGIwcYOsYeazqUrxCOxPk8SZ1ofzwDO8i2O6kTK%2BiIRdIRjQgzhKen%2B7LaFguR8U3L06pOm8ut1nMKHIWUNNYrb3kDJUxKiuaRQSTQqxI2A2g0n5iz0D1x3W";
      } else {
        appKey =
            "ml4WLD10EJpqIy8HCM8VwQYwawdIrSI5pCqV2SCgoiijdwrMK4yidyK9qI0Gfk8EyIuG%2FzRl2Q8%3D";
        accessKey =
            "uGC4wDFF%2FrspKMplxR2%2F%2Fe7dqjG6XbD4XNyOgBUhNGIwcYOsYeazqUrxCOxPk8SZ8e1E6EzYZjZE1Vt85of70qc0zJAkFNEwuQ36NmKBjGEURMnn2JB1KqHIWUNNYrb3kDJUxKiuaRQSTQqxI2A2g0n5iz0D1x3W";
      }

    }
  }

  Future<void> initPlatformState() async {
    if (!mounted) return;
  }

  @override
  void initState() {
    super.initState();
    globaldata.mainContext = context;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Device Manager',
        debugShowCheckedModeBanner: false,
        home: VerificationScreen1(),//DevicesScreen(),
        // home: FutureBuilder(
        //   future: verifyLoginToken(),
        //   builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
        //     if (snapshot.data != null) {
        //       return snapshot.data!;
        //     } else {
        //       return CircularProgressIndicator();
        //     }
        //   },
        // ),
        navigatorKey: RouteKey.navigatorKey,
        onGenerateRoute: (routeSettings) {
          switch (routeSettings.name) {
            case '/login':
              return MaterialPageRoute(
                builder: (context) => LoginScreen(),
              );
            case '/welcome':
              return MaterialPageRoute(
                builder: (context) => Welcome(),
              );
            case '/notifications':
              return MaterialPageRoute(
                builder: (context) => NotificationScreen(),
              );
          }
          return null;
        });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}

import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:project/new_bloc/core/helpers/codeTools.dart';
import 'package:project/utilities/services/entity/maps/locations.dart' as locations;
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;
import 'package:custom_info_window/custom_info_window.dart';
import 'package:project/utilities/services/entity/maps/maprecords.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:clippy_flutter/triangle.dart';


class Maps extends StatefulWidget {
  Maps({Key? key, this.lat, this.lon}) : super(key: key);

  final double? lat;
  final double? lon;

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    //target: LatLng(globaldata.latitude, globaldata.longitude),
    target: LatLng(40.69772700, -73.52685300),
    zoom: 12.4746,
  );

  double radius = 130;
  double progress = 0;
  Duration timePopupEnd = const Duration(milliseconds: 3000);
  CustomInfoWindowController _customInfoWindowController = CustomInfoWindowController();
  Completer<GoogleMapController> _controller = Completer();
  Map<String, Marker> _markers = {};
  double progressOpacity = 0;

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    updateMarkers(40.69772700, -73.52685300);
  }

  Future<void> updateMarkers(double lat, double long) async {

    setState(() {
      _markers.clear();
      final LatLng _latLng = LatLng(lat, long);
      final marker = Marker(
        icon: BitmapDescriptor.fromBytes(globaldata.pinImage),
        markerId: MarkerId(lat.toString()+long.toString()),
        position: LatLng(lat, long),
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0.0, 0.75))],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                            Text(
                              "Carlos - Iphone 7 plus",
                             // style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontSize: 14),
                            ),
                            TextButton.icon(
                                onPressed: () async {
                                  bool res = await openMap(
                                    lat,
                                    long,
                                  );

                                  if (res == false) {
                                    print("can't open google map");
                                    MapsLauncher.launchCoordinates(lat, long, 'Your selection is here');
                                  }
                                },
                                icon: Icon(
                                  Icons.gps_fixed,
                                  size: 24,
                                  color: Color(0xFFB7B7B7),
                                ),
                                label: Text("Open in Map app", style: TextStyle(color: Colors.white)))

                          ],
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Triangle.isosceles(
                  edge: Edge.BOTTOM,
                  child: Container(
                    color: Colors.blue,
                    width: 20.0,
                    height: 10.0,
                  ),
                ),
              ],
            ),
            _latLng,
          );
        },
      );
      _markers[lat.toString()+long.toString()] = marker;
    });
  }

  Future<void> setMarker(double lat, double long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);

    final LatLng _latLng = LatLng(lat, long);
    setState(() {
      final marker = Marker(
        markerId: MarkerId(lat.toString() + long.toString()),
        position: LatLng(lat, long),
        //icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        icon: BitmapDescriptor.fromBytes(globaldata.pinImage),
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: <BoxShadow>[BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0.0, 0.75))],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_circle,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                            ],
                          ),
                          Text(
                            placemarks.first.street.toString(),
                           // style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            placemarks.first.locality.toString(),
                          //  style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            placemarks.first.country.toString(),
                           // style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontSize: 14),
                          ),
                          TextButton.icon(
                              onPressed: () {
                                globaldata.mapAddress = placemarks.first.street.toString().replaceAll("\n", " ");
                                globaldata.mapCountry = placemarks.first.country.toString();
                               // Navigator.push(context, MaterialPageRoute(builder: (context) => ModuleCreate()));
                              },
                              icon: Icon(
                                Icons.add_to_photos,
                                size: 24,
                                color: Color(0xFFB7B7B7),
                              ),
                              label: Text("Create Lead", style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ],
            ),
            _latLng,
          );
        },
      );
      _markers[lat.toString() + long.toString()] = marker;
    });
  }

  var alertYesyOrNotStyle = AlertStyle(
    backgroundColor: Color(0xFF141414),
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    isButtonVisible: false,
    animationDuration: Duration(milliseconds: 150),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    titleStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
    alertAlignment: Alignment.center,
    titleTextAlign: TextAlign.left,
  );

  var alertStyle = AlertStyle(
      backgroundColor: Color(0xFF141414),
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      animationDuration: Duration(milliseconds: 150),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titleStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.85), fontSize: 16),
      alertAlignment: Alignment.center,
      titleTextAlign: TextAlign.left);

  Future<bool> _openPopupYesOrNot(context, String message) async {
    bool select = false;
    return Alert(
      context: context,
      style: alertYesyOrNotStyle,
      title: "",
      type: AlertType.info,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 250,
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    message,
                    style: TextStyle(color: Color(0xFFB7B7B7), fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: ButtonStyle(foregroundColor: MaterialStateProperty.all(globaldata.greenColor), alignment: Alignment.bottomRight),
                child: Text(
                  'Yes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                onPressed: () async {
                  select = true;
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                style: ButtonStyle(foregroundColor: MaterialStateProperty.all(globaldata.greenColor), alignment: Alignment.bottomRight),
                child: Text(
                  'No',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                onPressed: () async {
                  setState(() {
                    select = false;
                  });

                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      ),
    ).show().then((value) {
      return select;
    });
  }

  @override
  void initState() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    super.initState();
  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Platform.isWindows
            ? AppBar(
                title: const Text('No Available',
                    style: TextStyle(
                      fontFamily: 'Chivo',
                    )),
                backgroundColor: globaldata.greenColor,
                actions: [
                  TextButton.icon(
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      label: Text('')),
                ],
              )
            : AppBar(
                title: const Text('FREE TRIAL - Lead Map'),
                backgroundColor: globaldata.greenColor,
                actions: [
                  TextButton.icon(
                      onPressed: () {

                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      label: Text('')),
                  TextButton.icon(
                      onPressed: () {
                        setState(() {
                          _markers.clear();
                          radius = 0;
                        });
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      label: Text(''))
                ],
              ),
        body: Platform.isWindows
            ? Center(
                child: Text(
                  'Maps is not supported for Windows',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Chivo',
                    fontSize: 20,
                  ),
                ),
              )
            : Stack(
                children: [
                  GoogleMap(
                    mapToolbarEnabled: true,
                    mapType: MapType.satellite,
                    zoomControlsEnabled: true,
                    onTap: (argument) {
                      _customInfoWindowController.hideInfoWindow!();
                    },
                    onCameraMove: (position) {
                      _customInfoWindowController.onCameraMove!();
                    },
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (controller) {
                      _customInfoWindowController.googleMapController = controller;
                      _controller.complete(controller);
                      _onMapCreated(controller);
                    },
                    buildingsEnabled: true,
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    markers: _markers.values.toSet(),
                  ),
                  CustomInfoWindow(
                    controller: _customInfoWindowController,
                    height: 220,
                    width: 180,
                    offset: 60,
                  ),
                ],
              ),
      ),
    );
  }
}

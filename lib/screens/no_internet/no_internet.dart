import 'dart:math' as math;
import 'package:animated_background/animated_background.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:project/utilities/helpers/globaldata.dart' as globaldata;

class NoInternet extends StatefulWidget {
  NoInternet({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _NoInternetState createState() => new _NoInternetState();
}

class _NoInternetState extends State<NoInternet> with TickerProviderStateMixin {
  ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset('assets/images/hytech_icon.png'),
    baseColor: Colors.blue,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0,
    spawnMinRadius: 20.0,
    spawnMaxRadius: 36.0,
    particleCount: 10,
  );

  var particlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.0;

  // Lines
  var _lineDirection = LineDirection.Ltr;
  int _lineCount = 50;
  final Connectivity _connectivity = Connectivity();

  // Bubbles
  BubbleOptions _bubbleOptions = BubbleOptions();

  // General Variables
  int _behaviourIndex = 0;
  Behaviour? _behaviour;

  bool _showSettings = false;

  @override
  void initState() {
    super.initState();
  }

  Behaviour _buildBehaviour() {
    switch (_behaviourIndex) {
      case 0:
        return RandomParticleBehaviour(
          options: particleOptions,
          paint: particlePaint,
        );
      case 1:
        return RainParticleBehaviour(
          options: particleOptions,
          paint: particlePaint,
          enabled: !_showSettings,
        );
      case 2:
        return RectanglesBehaviour();
      case 3:
        return RacingLinesBehaviour(
          direction: _lineDirection,
          numLines: _lineCount,
        );
      case 4:
        return BubblesBehaviour(
          options: _bubbleOptions,
        );
      case 5:
        return SpaceBehaviour();
    }

    return RandomParticleBehaviour(
      options: particleOptions,
      paint: particlePaint,
    );
  }

  verifyNetworkStatusOnInit() async {
    ConnectivityResult connectivityResult = await _connectivity.checkConnectivity();
    setState(() {
      if (connectivityResult.name.toString() == "wifi" || connectivityResult.name.toString() == "mobile") {
        globaldata.isScreenNoInternet = false;

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedBackground(
        behaviour: _behaviour = _buildBehaviour(),
        vsync: this,
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 200, left: 10),
            child: Column(
              children: [
                Center(
                  child: Icon(
                    Icons.wifi_off,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('No Internet', style: TextStyle(color: Colors.white, fontSize: 40)),
                    Text('Connection', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Text('Please check you connection!', style: TextStyle(color: Colors.yellow, fontSize: 14)),
                    SizedBox(height: 20),
                  ],
                ),
                Center(
                  child: Container(
                    width: 130.0,
                    height: 50.0,
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[Color(0xFF10FB06), Color(0XFF0DC005)]),
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [BoxShadow(color: Colors.black87, spreadRadius: 0.3, blurRadius: 7, offset: Offset(1, 4))]),
                    child: TextButton.icon(
                      onPressed: () => {
                        verifyNetworkStatusOnInit(),
                      },
                      icon: Icon(Icons.refresh, color: globaldata.greenLetter1),
                      label: Text(
                        'Try again',
                        style: TextStyle(
                          color: Color(0xFF043301),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Chivo',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum ParticleType {
  Shape,
  Image,
}

class RainParticleBehaviour extends RandomParticleBehaviour {
  static math.Random random = math.Random();

  bool enabled;

  RainParticleBehaviour({
    ParticleOptions options = const ParticleOptions(),
    Paint? paint,
    this.enabled = true,
  }) : super(options: options, paint: paint);

  @override
  void initPosition(Particle p) {
    p.cx = random.nextDouble() * size!.width;
    if (p.cy == 0.0)
      p.cy = random.nextDouble() * size!.height;
    else
      p.cy = random.nextDouble() * size!.width * 0.2;
  }

  @override
  void initDirection(Particle p, double speed) {
    double dirX = (random.nextDouble() - 0.5);
    double dirY = random.nextDouble() * 0.5 + 0.5;
    double magSq = dirX * dirX + dirY * dirY;
    double mag = magSq <= 0 ? 1 : math.sqrt(magSq);

    p.dx = dirX / mag * speed;
    p.dy = dirY / mag * speed;
  }
}

import 'dart:async' show Completer;
import 'package:flutter/material.dart';
import 'package:bikeloca/authentication.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import './drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.auth, this.userId, this.onSignedOut})
      : super(key: key);
  
  final BaseAuth auth;
  final VoidCallback onSignedOut;
  final String userId;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(-33.449272, -70.660960);
  // -33.449272, -70.660960 Santiago, CL Cordinates
  // 45.517824, -122.685336 Portland, US Cordinates
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bike Lovers Sites'),
          backgroundColor: Colors.black,
          actions: <Widget>[
            new FlatButton(
                child: new Text('Logout',
                    style: new TextStyle(fontSize: 17.0, color: Colors.white)),
                onPressed: _signOut)
          ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
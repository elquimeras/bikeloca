import 'package:flutter/material.dart';
import './drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bikers Location APP'),
      ),
      body: Center(
        child: 
          Text('Welcome Biker! Here must the map render'),
      ),
      drawer: MyDrawer(),
    );
  }
}


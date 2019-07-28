import 'package:flutter/material.dart';

class SimultaneousAnimations extends StatefulWidget {
  _SimultaneousAnimationsState createState() => _SimultaneousAnimationsState();
}

class _SimultaneousAnimationsState extends State<SimultaneousAnimations> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simultaneous Animations')),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 300,
          width: 300,
          child: FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
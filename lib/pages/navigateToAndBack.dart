import 'package:flutter/material.dart';

class NavigateToAndBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstRoute();
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Route')),
      body: Center(
        child: RaisedButton(
          child: Text('Open Route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Route')),
      body: Center(
        child: RaisedButton(
          child: Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}
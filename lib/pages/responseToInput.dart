import 'package:flutter/material.dart';

class ResponseToInput extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<ResponseToInput> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Response To Input')),
      body: Center(
        child: Row(
          children: <Widget>[
            _CounterIncrementor(onPressed: _increment),
            _CounterDisplay(count: _counter),
          ],
        ),
      ),
    );
  }
}

class _CounterDisplay extends StatelessWidget {
  final int count;

  _CounterDisplay({this.count});

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class _CounterIncrementor extends StatelessWidget {
  _CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

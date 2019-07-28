import 'package:flutter/material.dart';



class ParentWidgetManagesState extends StatefulWidget {

  @override
  _ParentWidgetManagesStateState createState() => _ParentWidgetManagesStateState();

}

class _ParentWidgetManagesStateState extends State<ParentWidgetManagesState> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Parent Widget Manages State')),
      body: Container(
        child: TapBoxB(
          onChanged: _handleTapBoxChanged,
          active: _active,
        ),
      ),
    );
  }

}

class TapBoxB extends StatelessWidget {
  TapBoxB({Key key, this.active = false, @required this.onChanged}) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
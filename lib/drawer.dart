import 'package:flutter/material.dart';
import 'pages/navigateToAndBack.dart';
import 'pages/sendDataToNewScreen.dart';
import 'pages/returnDataFromScreen.dart';
import 'pages/animatingWidgetAcrossScreens.dart';

final tiles = [
  Tile(Icons.assignment_ind, 'Hello World', path: '/helloWorld'),
  Tile(Icons.aspect_ratio, 'Basic Widgets', path: '/basicWidgets'),
  Tile(Icons.assistant_photo, 'Handling Gestures', path: '/handlingGestures'),
  Tile(Icons.audiotrack, 'Response to Input', path: '/responseToInput'),
  Tile(Icons.battery_charging_full, 'Bring It All Together', path: '/bringItAllTogether'),
  Tile(Icons.beach_access, 'Build Layout', path: '/buildLayout'),
  Tile(Icons.cake, 'Widget Manages Own State', path: '/widgetManagesOwnState'),
  Tile(Icons.call_to_action, 'Parent Widget Manages State', path: '/parentWidgetManagesState'),
  Tile(Icons.burst_mode, 'Mix And Match Approach', path: '/mixAndMatchApproach'),
  Tile(Icons.brightness_3, 'Navigate to and back', routeBuilder: (context) => NavigateToAndBack()),
  Tile(Icons.attachment, 'Send Data to New Screen', routeBuilder: (context) => SendDataToNewScreen()),
  Tile(Icons.account_balance, 'Return Data Form Screen', routeBuilder: (context) => ReturnDataFormScreen()),
  Tile(Icons.bubble_chart, 'Animating Widget Across Screens', routeBuilder: (context) => AnimatingWidgetAcrossScreens()),
  Tile(Icons.bug_report, 'Rendering Animation', path: '/renderingAnimation'),
  Tile(Icons.pan_tool, 'Simplifying with AnimatedWidget', path: '/simplifyingWithAnimatedWidget'),
  Tile(Icons.radio, 'Monitoring Animation Progress', path: '/monitoringAnimationProgress'),
  Tile(Icons.swap_horiz, 'Refactoring with AnimatedBuilder', path: '/refactoringWithAnimatedBuilder'),
  Tile(Icons.headset, 'Simultaneous Animations', path: '/simultaneousAnimations'),
];

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: tiles.map((Tile tile) => ListTile(
          leading: Icon(tile.iconData),
          title: Text(tile.title),
          onTap: () {
            if (tile.path != null) {
              Navigator.of(context).pushNamed(tile.path);
            } else if (tile.routeBuilder != null) {
              Navigator.push(context, MaterialPageRoute(builder: tile.routeBuilder));
            }
          },
        )).toList(),
      ),
      elevation: 20,
    );
  }
}



class Tile {
  final IconData iconData;
  final String title;
  final String path;
  final WidgetBuilder routeBuilder;

  const Tile(this.iconData, this.title, {this.path, this.routeBuilder} );
}
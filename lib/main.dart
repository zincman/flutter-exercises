import 'package:flutter/material.dart';
import 'pages/helloWorld.dart';
import 'pages/basicWidgets.dart';
import 'pages/HandlingGestures.dart';
import 'pages/responseToInput.dart';
import 'pages/bringItAllTogether.dart';
import 'pages/buildLayout.dart';
import 'pages/widgetManagesOwnState.dart';
import 'pages/parentWidgetManagesState.dart';
import 'pages/mixAndMatchApproach.dart';
import 'pages/renderingAnimation.dart';
import 'pages/simplifyingWithAnimatedWidget.dart' show SimplifyingWithAnimatedWidget;
import 'pages/monitoringAnimationProgress.dart';
import 'pages/refactoringWithAnimatedBuilder.dart';
import 'pages/simultaneousAnimations.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercises',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercises'),
        ),
        body: Center(
          child: Text('Swipe from left edge'),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            tooltip: 'Add',
            child: Icon(Icons.add),
            onPressed: () {
              print('Add One');
            }),
      ),
      routes: <String, WidgetBuilder>{
        '/helloWorld': (BuildContext context) => HelloWorld(),
        '/basicWidgets': (BuildContext context) => BasicWidgets(),
        '/handlingGestures': (BuildContext context) => HandlingGestures(),
        '/responseToInput': (BuildContext context) => ResponseToInput(),
        '/bringItAllTogether': (BuildContext context) => BringItAllTogether(),
        '/buildLayout': (BuildContext context) => BuildLayout(),
        '/widgetManagesOwnState': (BuildContext context) => WidgetManagesOwnState(),
        '/parentWidgetManagesState': (BuildContext context) => ParentWidgetManagesState(),
        '/mixAndMatchApproach': (BuildContext context) => MixAndMatchApproach(),
        '/renderingAnimation': (BuildContext context) => RenderingAnimation(),
        '/simplifyingWithAnimatedWidget': (BuildContext context) => SimplifyingWithAnimatedWidget(),
        '/monitoringAnimationProgress': (BuildContext context) => MonitoringAnimationProgress(),
        '/refactoringWithAnimatedBuilder': (BuildContext context) => RefactoringWithAnimatedBuilder(),
        '/simultaneousAnimations': (BuildContext context) => SimultaneousAnimations(),
      },
    );
  }
}

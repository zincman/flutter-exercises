import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class RefactoringWithAnimatedBuilder extends StatefulWidget {
  _RefactoringWithAnimatedBuilderState createState() =>
      _RefactoringWithAnimatedBuilderState();
}

class _RefactoringWithAnimatedBuilderState
    extends State<RefactoringWithAnimatedBuilder> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Refactoring with AnimatedBuilder')),
      body: GrowTransition(
        child: LogoWidget(),
        animation: animation,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) => Center(
    child: AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Container(
        height: animation.value,
        width: animation.value,
        child: child,
      ),
      child: child,
    ),
  );
}

class LogoWidget extends StatelessWidget {
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: FlutterLogo(),
  );
}
import 'package:flutter/material.dart';

class MyHero extends StatelessWidget {
  final Widget child;
  final String tag;

  const MyHero({Key? key,required this.tag,required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(tag: tag,
    transitionOnUserGestures: true,
     child: Material(
      color: Colors.transparent,
      child: child));
  }
}

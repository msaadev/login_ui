import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';

class SignupView extends StatelessWidget {
  final PageController pageController;

  const SignupView({Key? key,required this.pageController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: 10.paddingAll,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 0.radius10,
        ),
        alignment: Alignment.center,
        child: Text('SignupView'));
  }
}

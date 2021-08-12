import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';

class ForgotPasswordView extends StatelessWidget {

  final PageController pageController;

  const ForgotPasswordView({Key? key,required this.pageController}) : super(key: key);
@override
Widget build(BuildContext context) {
 return Container(
        margin: 10.paddingAll,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 0.radius10,
        ),
        alignment: Alignment.center,
        child: Text('ForgotPasswordView'));
}
}
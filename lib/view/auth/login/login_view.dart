import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/components/buttons/custom_button.dart';
import 'package:login_ui/core/components/hero/my_hero.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/constants/app_constats.dart';
import 'package:login_ui/view/profile/profile_view.dart';

class LoginView extends StatelessWidget {
  final PageController pageController;

  const LoginView({Key? key, required this.pageController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyHero(
      tag: 'login',
      child: Container(
          margin: 10.paddingAll,
          padding: 10.paddingAll,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: 0.radius10,
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  LoginInput(),
                  LoginInput(),
                ],
              ),
              CustomButton()
            ],
          )),
    );
  }
}

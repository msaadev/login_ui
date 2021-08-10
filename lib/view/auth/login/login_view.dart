import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/components/hero/my_hero.dart';
import 'package:login_ui/view/profile/profile_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHero(
      tag: 'login',
      child: Container(
          margin: 10.paddingAll,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: 0.radius10,
          ),
          alignment: Alignment.center,
          child: Text('LoginView')
              .onTap(() => context.navigateToPage(ProfileView()))),
    );
  }
}

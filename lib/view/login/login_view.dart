import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/extensions/num_extensions.dart';
import 'package:login_ui/view/login/login_viewmodel.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Observer(builder: (_) {
              return AnimatedSwitcher(
                duration: 1.secondDuration,
                transitionBuilder: (i, a) => SizeTransition(
                  sizeFactor: a,
                  child: i,
                ),
                child: loginViewModel.i ? buildFirst : buildSecond,
              );
            }),
            TextButton(
                onPressed: () {
                  loginViewModel.set();
                },
                child: Text('sdasdasd'))
          ],
        ),
      ),
    );
  }

  Column get buildFirst => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginInput(
            hint: 'asdasdasd',
          ),
          LoginInput(
            hint: 'asdasdasd',
          )
        ],
      );

  Widget get buildSecond => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginInput(
              hint: 'asdasdasd',
            ),
            LoginInput(
              hint: 'asdasdasd',
            ),
            LoginInput(
              hint: 'asdasdasd',
            ),
            LoginInput(
              hint: 'asdasdasd',
            ),
          ],
        ),
      );
}

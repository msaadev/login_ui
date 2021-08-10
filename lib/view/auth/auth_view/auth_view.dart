import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/constants/app_constats.dart';
import 'package:login_ui/view/auth/auth_view/auth_viewmodel.dart';
import 'package:login_ui/view/auth/forgot_password/forgot_password_view.dart';
import 'package:login_ui/view/auth/login/login_view.dart';
import 'package:login_ui/view/auth/signup/signup_view.dart';

class AuthView extends StatefulWidget {
  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  late final AuthViewModel _viewModel;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _viewModel = AuthViewModel();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: const [AppConstants.LOGIN_START, AppConstants.LOGIN_END],
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: 10.paddingAll,
              height: context.customHeight(3),
              child: Observer(builder: (_) {
                return headerSwitch(_viewModel.page);
              }),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  _viewModel.setPage(page);
                },
                children: [ForgotPasswordView(), LoginView(), SignupView()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget headerSwitch(int i) {
    switch (i) {
      case 0:
        return headerText('Reset Password');
      case 1:
        return headerText('Login');
      case 2:
        return headerText('Signup');
      default:
        return headerText('Login');
    }
  }

  Widget headerText(String text) {
    return DefaultTextStyle(
      style: context.textTheme.headline2!
          .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      child: AnimatedTextKit(
        isRepeatingAnimation: false,
        repeatForever: true,
         animatedTexts: [
        TypewriterAnimatedText(text,
            speed: 100.millisecondsDuration, cursor: ''),
      ]),
    );
  }
}

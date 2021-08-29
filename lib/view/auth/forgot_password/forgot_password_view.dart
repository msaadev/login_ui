import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/components/buttons/custom_button.dart';
import 'package:login_ui/core/components/buttons/login_button.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/constants/app_constats.dart';

class ForgetPasswordView extends StatefulWidget {
  final PageController pageController;

  const ForgetPasswordView({Key? key, required this.pageController})
      : super(key: key);

  @override
  _ForgetPasswordViewState createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  late final GlobalKey<FormState> _key;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    if (_key.currentState != null) _key.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.hSized,
        Container(
          margin: 10.paddingAll,
          padding: 20.paddingAll,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: 0.radius10,
          ),
          child: Form(
              key: _key,
              child: Column(
                children: [
                  LoginInput(
                    icon: Icons.mail,
                    hint: 'E-Mail',
                    validator: (String? value) {
                      if (value != null) {
                        if (value.isValidEmail) {
                          return null;
                        }
                      }
                      return 'invalid email';
                    },
                  ),
                  20.hSized,
                  CustomButton(
                    text: 'Send',
                    onTap: () => send,
                  ),
                  20.hSized,
                  LoginButton(
                    isNext: true,
                    pageController: widget.pageController,
                  )
                ],
              )),
        ),
      ],
    );
  }

  void get send {
    if (_key.currentState!.validate()) {
      AppConstants.showSuccesToas(message: 'Activation mail has been sent');
      widget.pageController
          .nextPage(duration: 250.millisecondsDuration, curve: Curves.ease);
    } else {
      AppConstants.showErrorToas(message: 'Please fill in the required fields');
    }
  }
}

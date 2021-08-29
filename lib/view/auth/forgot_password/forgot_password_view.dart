import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/components/buttons/custom_button.dart';
import 'package:login_ui/core/components/input/login_input.dart';

class ForgetPasswordView extends StatelessWidget {
  final PageController pageController;

  const ForgetPasswordView({Key? key, required this.pageController})
      : super(key: key);
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
              CustomButton(text: 'Send'),
              20.hSized,
              Text('Login')
            ],
          )),
        ),
      ],
    );
  }
}

/*

Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            CustomButton(text: 'Send'),
            Text('Login')
          ],
        ))
*/

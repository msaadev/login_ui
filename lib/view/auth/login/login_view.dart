import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/components/buttons/custom_button.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/constants/app_constats.dart';

class LoginView extends StatefulWidget {
  final PageController pageController;

  const LoginView({Key? key, required this.pageController}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final GlobalKey<FormState> _key;
  late final TextEditingController _mail, _password;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormState>();
    _mail = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    if (_key.currentState != null) _key.currentState!.dispose();
    _mail.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: 10.paddingAll,
        padding: 20.paddingAll,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 0.radius10,
        ),
        alignment: Alignment.center,
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  LoginInput(
                    icon: Icons.mail,
                    hint: 'e-mail',
                    validator: (String? value) {
                      if (value != null) {
                        if (value.isValidEmail) {
                          return null;
                        }
                      }
                      return 'invalid email';
                    },
                  ),
                  10.hSized,
                  LoginInput(
                    icon: Icons.vpn_key,
                    obscure: true,
                    hint: 'password',
                    validator: (value) => AppConstants.validator(value,
                        len: 4, message: 'Please enter at least 4 character'),
                  ),
                  10.hSized,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password',
                      style: context.textTheme.bodyText1!
                          .copyWith(color: AppConstants.BUTTON),
                    ).onTap(() => widget.pageController.previousPage(
                        duration: 250.millisecondsDuration,
                        curve: Curves.ease)),
                  )
                ],
              ),
              CustomButton(
                text: 'Login',
                onTap: () => login,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account? ",
                    style: context.textTheme.bodyText1!
                        .copyWith(color: Colors.grey.shade600),
                  ),
                  Text(
                    'Register Now',
                    style: context.textTheme.bodyText1!
                        .copyWith(color: AppConstants.BUTTON),
                  ).onTap(() => widget.pageController.nextPage(
                      duration: 250.millisecondsDuration, curve: Curves.ease))
                ],
              )
            ],
          ),
        ));
  }

  void get login {
    if (_key.currentState!.validate()) {
      AppConstants.showSuccesToas(message: 'Logged In');
    } else {
      AppConstants.showErrorToas(message: 'Please fill required fields');
    }
  }
}

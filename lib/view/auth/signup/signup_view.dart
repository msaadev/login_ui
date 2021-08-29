import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/components/buttons/custom_button.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/constants/app_constats.dart';

class SignupView extends StatefulWidget {
  final PageController pageController;

  const SignupView({Key? key, required this.pageController}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  late final GlobalKey<FormState> _key;
  late final TextEditingController _mail, _name, _password;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormState>();
    _mail = TextEditingController();
    _name = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    if (_key.currentState != null) _key.currentState!.dispose();
    _mail.dispose();
    _name.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 10.paddingAll,
      padding: 10.paddingAll,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: 0.radius10,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            key: _key,
            child: Column(
              children: [
                LoginInput(
                  controller: _name,
                  icon: Icons.person,
                  hint: 'Name Surname',
                  validator: (value) => AppConstants.validator(value,
                      len: 4, message: 'Please enter at least 4 character'),
                ),
                LoginInput(
                  type: TextInputType.emailAddress,
                  controller: _mail,
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
                LoginInput(
                    icon: Icons.vpn_key,
                    obscure: true,
                    controller: _password,
                    hint: 'Password',
                    validator: (value) => AppConstants.validator(value,
                        len: 4, message: 'Please enter at least 4 character')),
                LoginInput(
                  icon: Icons.vpn_key,
                  obscure: true,
                  validator: (value) {
                    if (value == _password.text) {
                      return null;
                    } else {
                      return 'Passwords mismatch';
                    }
                  },
                  hint: 'Password Again',
                ),
              ],
            ),
          ),
          CustomButton(
            text: 'Signup',
            onTap: () {
              if (_key.currentState!.validate()) {
                print('valid');
              } else {
                print('not valid');
              }
            },
          ),
        ],
      ),
    );
  }

void get signup {
  
}


}

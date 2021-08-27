import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  late final GlobalKey<FormFieldState> _key;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<FormFieldState>();
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                LoginInput(
                  icon: Icons.person,
                  hint: 'Name Surname',
                  validator: (value) => AppConstants.validator(value,
                      len: 4, message: 'Please enter at least 4 character'),
                ),
                LoginInput(
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
                  hint: 'Password',
                ),
                LoginInput(
                  hint: 'Password',
                ),
              ],
            ),
          ),
          CustomButton(
            text: 'Signup',
            onTap: (){
              
            },
          ),
        ],
      ),
    );
  }
}

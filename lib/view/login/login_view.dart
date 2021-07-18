import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/extensions/num_extensions.dart';
import 'package:login_ui/view/login/login_viewmodel.dart';
import 'package:login_ui/view/signup/signup_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginViewModel loginViewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Hero(
                  tag: 'hero',
                  child: Observer(
                    builder: (_) {
                    return AnimatedContainer(
                      duration: 5.secondDuration,
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: 0.radius50,
                      ),
                      child: Wrap(
                        children: loginViewModel.widgetList,
                      ),
                    );
                  }),
                ),
                TextButton(
                    onPressed: () {
                      loginViewModel.addItem(LoginInput(
                        hint: 'asdasdasd',  
                      ));
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (_) => SignupView()));
                    },
                    child: Text('sdasdasd'))
              ],
            )),
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

  Column get buildSecond => Column(
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
      );
}

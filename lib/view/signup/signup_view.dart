import 'package:flutter/material.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:login_ui/core/extensions/num_extensions.dart';

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                20.hSized,
                Hero(
                  tag: 'hero',
                  child: AnimatedContainer(
                    duration: 5.secondDuration,
                    width: 250,
                    height: 500,
                    color: Colors.blue,
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
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('sdasdasd')),
              ],
            )),
      ),
    );
  }
}

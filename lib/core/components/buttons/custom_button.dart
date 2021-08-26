import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/constants/app_constats.dart';

class CustomButton extends StatelessWidget {
@override
Widget build(BuildContext context) {
  
 return Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: 10.paddingAll,
                decoration: BoxDecoration(
                  color: AppConstants.BUTTON,
                  borderRadius: 0.radius10,
                ),
                child: Text(
                  'Login',
                  style: context.textTheme.headline6!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              );
}
}
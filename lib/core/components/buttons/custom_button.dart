import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';
import 'package:login_ui/core/constants/app_constats.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onTap;

  const CustomButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: 15.paddingAll,
      decoration: BoxDecoration(
        color: AppConstants.BUTTON,
        borderRadius: 0.radius5,
      ),
      child: Text(
        text,
        style: context.textTheme.headline4!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ).onTap(onTap);
  }
}

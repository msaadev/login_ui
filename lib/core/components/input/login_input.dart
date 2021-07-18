import 'package:flutter/material.dart';
import 'package:login_ui/core/constants/app_constats.dart';
import 'package:login_ui/core/extensions/context_extensions.dart';
import 'package:login_ui/core/extensions/num_extensions.dart';

class LoginInput extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final IconData? icon;
  final bool obscure;
  final TextInputType type;
  final Function()? onEditingComplete;
  final String? Function(String? text)? validator;

  const LoginInput(
      {Key? key,
      this.hint,
      this.controller,
      this.icon,
      this.obscure = false,
      this.onEditingComplete,
      this.validator, this.type = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin:EdgeInsets.all(5),
      child: TextFormField(
        validator: validator,
        onEditingComplete:
            onEditingComplete ?? () => FocusScope.of(context).nextFocus(),
        obscureText: obscure,
        controller: controller,
        style: context.textTheme.bodyText1!.copyWith(
          color: AppConstants.PRIMARY_COLOR,
        ),
        decoration: InputDecoration(
          errorStyle: context.textTheme.bodyText1!
              .copyWith(color: Colors.grey, fontSize: 10),
          prefixIcon: Icon(
            icon ?? Icons.verified_user,
            color: AppConstants.PRIMARY_COLOR,
          ),
          hintText: hint,
          hintStyle: context.textTheme.bodyText1!.copyWith(
            color: AppConstants.DOVE_GRAY,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: buildBorder,
          border: buildBorder,
          errorBorder: buildBorder,
          focusedBorder: buildBorder,
          disabledBorder: buildBorder,
          focusedErrorBorder: buildBorder,
        ),
      ),
    );
  }
  OutlineInputBorder get buildBorder => OutlineInputBorder(
      borderRadius: 0.radius10,
      borderSide: BorderSide(color: AppConstants.PRIMARY_COLOR, width: 1));
}

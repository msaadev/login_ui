import 'package:flutter/material.dart';
import 'package:login_ui/core/components/input/login_input.dart';
import 'package:mobx/mobx.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  List<Widget> widgetList = [
    LoginInput(
      hint: 'asdasdasd',
    ),
    LoginInput(
      hint: 'asdasdasd',
    )
  ];

  @action
  addItem(Widget item) {
    widgetList.add(item);
  }
}

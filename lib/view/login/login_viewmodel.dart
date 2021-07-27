import 'package:mobx/mobx.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  bool i = true;

  @action
  void set() {
    i = !i;
  }
}

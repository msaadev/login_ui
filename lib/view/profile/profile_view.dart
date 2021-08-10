import 'package:flutter/material.dart';
import 'package:login_ui/core/components/hero/my_hero.dart';
import 'package:login_ui/view/profile/profile_view_model.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late final ProfileViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ProfileViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHero(
        tag: 'login',
        child: Container(
          alignment: Alignment.center,
          child: Text('ProfileView')),
      ),
    );
  }
}

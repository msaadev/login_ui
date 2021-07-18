import 'package:flutter/material.dart';
import 'package:login_ui/view/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginView(),
    );
  }
}

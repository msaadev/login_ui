import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/view/auth/auth_view/auth_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(),
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        BotToastNavigatorObserver()
      ],
      title: 'Material App',
      home: AuthView(),
    );
  }
}

import 'package:dart_week_app/app/pages/auth/login/login_controller.dart';
import 'package:dart_week_app/app/pages/auth/login/login_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class LoginRouter {
  LoginRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(create: (context) => LoginController(context.read())),
        ],
        child: LoginPage(),
      );
}

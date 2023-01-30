import 'package:dart_week_app/app/core/ui/theme/theme_config.dart';
import 'package:dart_week_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeConfig.theme,
      title: "Delivery App",
      routes: {
        '/' : (context) => const SplashPage(),
      },
    );
  }
}
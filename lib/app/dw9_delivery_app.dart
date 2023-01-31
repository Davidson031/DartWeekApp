import 'package:dart_week_app/app/core/ui/theme/theme_config.dart';
import 'package:dart_week_app/app/pages/home/home_page.dart';
import 'package:dart_week_app/app/pages/home/home_router.dart';
import 'package:dart_week_app/app/pages/splash/splash_page.dart';
import 'package:dart_week_app/app/pages/teste.dart';
import 'package:dart_week_app/app/repositories/products/products_repository.dart';
import 'package:dart_week_app/app/repositories/products/products_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'core/provider/application_binding.dart';
import 'core/rest_client/custom_dio.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        theme: ThemeConfig.theme,
        title: "Delivery App",
        routes: {
          '/' : (context) => const SplashPage(),
          '/home':(context) => HomeRouter.page,
        },
      ),
    );
  }
}


import 'package:dart_week_app/app/core/global/global_context.dart';
import 'package:dart_week_app/app/core/ui/theme/theme_config.dart';
import 'package:dart_week_app/app/dto/order_product_dto.dart';
import 'package:dart_week_app/app/pages/auth/login/login_page.dart';
import 'package:dart_week_app/app/pages/auth/login/login_router.dart';
import 'package:dart_week_app/app/pages/auth/register/register_page.dart';
import 'package:dart_week_app/app/pages/auth/register/register_router.dart';
import 'package:dart_week_app/app/pages/home/home_controller.dart';
import 'package:dart_week_app/app/pages/home/home_page.dart';
import 'package:dart_week_app/app/pages/home/home_router.dart';
import 'package:dart_week_app/app/pages/order/order_completed_page.dart';
import 'package:dart_week_app/app/pages/order/order_page.dart';
import 'package:dart_week_app/app/pages/order/order_router.dart';
import 'package:dart_week_app/app/pages/product_detail/product_detail_router.dart';
import 'package:dart_week_app/app/pages/splash/splash_page.dart';
import 'package:dart_week_app/app/repositories/products/products_repository.dart';
import 'package:dart_week_app/app/repositories/products/products_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'core/provider/application_binding.dart';
import 'core/rest_client/custom_dio.dart';

class Dw9DeliveryApp extends StatelessWidget {

  final _navKey = GlobalKey<NavigatorState>();

  Dw9DeliveryApp({super.key}){
    GlobalContext.i.navigatorKey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        navigatorKey: _navKey,
        theme: ThemeConfig.theme,
        title: "Delivery App",
        routes: {
          '/' : (context) => const SplashPage(),
          '/home':(context) => HomeRouter.page,
          '/productDetail':(context) => ProductDetailRouter.page,
          '/auth/login': (context) => LoginRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order':(context) => OrderRouter.page,
          "/order/completed":(context) => const OrderCompletedPage()
          
        },
      ),
    );
  }
}


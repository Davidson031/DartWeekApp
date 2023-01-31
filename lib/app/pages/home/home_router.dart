import 'package:dart_week_app/app/core/rest_client/custom_dio.dart';
import 'package:dart_week_app/app/pages/home/home_page.dart';
import 'package:dart_week_app/app/repositories/products/products_repository.dart';
import 'package:dart_week_app/app/repositories/products/products_repository_impl.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
            create: (context) => ProductsRepositoryImpl(
              dio: context.read<CustomDio>(),
            ),
          ),
        ],
        child: const HomePage(),
      );
}

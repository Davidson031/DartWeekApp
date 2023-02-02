import 'package:dart_week_app/app/core/ui/helpers/loader.dart';
import 'package:dart_week_app/app/core/ui/helpers/messages.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dart_week_app/app/models/product_model.dart';
import 'package:dart_week_app/app/pages/home/home_controller.dart';
import 'package:dart_week_app/app/pages/home/home_state.dart';
import 'package:dart_week_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../core/ui/base_state/base_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
  @override
  void onReady() {
    controller.loadProducts();
    super.onReady();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: BlocConsumer<HomeController, HomeState>(
        listener: (context, state) {},
        //listener: (context, state) {
        // state.status.matchAny(
        //   any: () => hideLoader(),
        //   initial: () {},
        //   loading: () => showLoader(),
        //   loaded: () => hideLoader(),
        //   error: () {
        //     hideLoader();
        //     showError(state.errormessage ?? 'Erro não informado');
        //   },
        // );
        //},
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return DeliveryProductTile(
                      product: product,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

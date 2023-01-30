import 'package:dart_week_app/app/core/config/env/env.dart';
import 'package:dart_week_app/app/core/ui/styles/app_styles.dart';
import 'package:dart_week_app/app/core/ui/styles/colors_app.dart';
import 'package:dart_week_app/app/core/ui/styles/text_styles.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashPage extends StatelessWidget {


  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    print(Env.i['backend_base_url']);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash"),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            label: "Teste Button",
            onPressed: (){},
          )
        ],
      ),
    );
  }
}

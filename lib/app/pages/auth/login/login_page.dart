import 'package:dart_week_app/app/core/ui/styles/text_styles.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: context.textStyles.textTitle,
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "E-mail",
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "Senha",
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: DeliveryButton(
                        label: "Entrar",
                        onPressed: () {},
                        width: double.infinity,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Não possui uma conta?",
                      style: context.textStyles.textBold,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/auth/register");
                      },
                      child: Text(
                        "Cadastre-se",
                        style: context.textStyles.textBold.copyWith(color: Colors.blue)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

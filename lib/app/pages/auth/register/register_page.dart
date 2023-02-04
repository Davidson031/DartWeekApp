import 'package:dart_week_app/app/core/ui/styles/text_styles.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dart_week_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cadastro",
                  style: context.textStyles.textTitle,
                ),
                Text(
                  "Preencha os campos abaixo para criar o cadastro",
                  style: context.textStyles.textMedium.copyWith(fontSize: 17),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Nome'),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'E-mail'),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Senha'),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Confirma Senha'),
                ),
                const SizedBox(height: 30),
                Center(
                  child: DeliveryButton(
                    label: "Cadastrar",
                    onPressed: () {},
                    width: double.infinity,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

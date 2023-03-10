import 'package:dart_week_app/app/core/ui/helpers/size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DeliveryButton extends StatelessWidget {


  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  const DeliveryButton({super.key, required this.label, required this.onPressed, this.width, this.height = 50});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}

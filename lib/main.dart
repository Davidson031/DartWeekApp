import 'package:dart_week_app/app/core/config/env/env.dart';
import 'package:flutter/material.dart';

import 'app/dw9_delivery_app.dart';

void main() async {

  await Env.i.load();
  
  runApp(Dw9DeliveryApp());
}


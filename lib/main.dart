import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/app_module.dart';

import 'app_widget.dart';

void main() {
  Modular.to.addListener(() {
    debugPrint(Modular.to.path);
  });
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

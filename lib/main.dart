import 'package:flutter/material.dart';
import 'package:flutter_iris_predictor/config/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: router, debugShowCheckedModeBanner: false);
  }
}

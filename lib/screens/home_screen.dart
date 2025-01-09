import 'package:flutter/material.dart';
import 'package:flutter_iris_predictor/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                child: Column(
                  spacing: 10,
                  children: [
                    CustomInput(
                      placeholder: 'Longitud del sépalo'
                    ),
                    CustomInput(
                      placeholder: 'Ancho del sépalo'
                    ),
                    CustomInput(
                      placeholder: 'Longitud del pétalo'
                    ),
                    CustomInput(
                      placeholder: 'Ancho del pétalo'
                    ),
                  ]
                ),
              ),
              CustomButton(
                  text: 'Predecir',
                  onPressed: (){context.go('/prediction');}
                )
            ],
          ),
        ),
      ),
    );
  }
}

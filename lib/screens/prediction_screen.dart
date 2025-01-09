import 'package:flutter/material.dart';
import 'package:flutter_iris_predictor/config/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  style: IconButton.styleFrom(
                    overlayColor: Colors.transparent,
                    backgroundColor: AppColors.secondary,
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () => context.pop(),
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.background,
                  )),
              Card(
                elevation: 0,
                color: AppColors.accent,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tu predicción:',
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          Text('Iris Versicolor',
                              style: GoogleFonts.poppins(fontSize: 16)),
                        ],
                      ),
                      Image.asset(
                        'assets/images/prediction.png',
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                  elevation: 0,
                  color: AppColors.salmon,
                  child: Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Esta especie de flor es de tamaño intermedio, con pétalos más largos y estrechos que la setosa.\n\nNo es tan pequeña como la setosa, pero tampoco tan grande como la virginica.',
                        style: GoogleFonts.poppins(fontSize: 16),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_iris_predictor/widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29333E),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Iris Predictor',
                        style: GoogleFonts.abrilFatface(
                            color: Color(0xFFFFFFFF), fontSize: 40)),
                    Text(
                      'Tu iris, nuestra inteligencia artificial',
                      style: GoogleFonts.poppins(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/intro.png',
                  height: 300,
                ),
                CustomButton(
                  text: 'Comenzar',
                  onPressed: (){context.go('/home');}
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

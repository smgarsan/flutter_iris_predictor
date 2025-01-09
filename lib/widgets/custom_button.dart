import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        onPressed: onPressed,
        iconAlignment: IconAlignment.end,
        icon: Icon(Icons.arrow_forward, color: Color(0xFF29333E)),
        label: Text(
          text,
          style: GoogleFonts.poppins(
            color: const Color(0xFF29333E),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: FilledButton.styleFrom(
          overlayColor: Colors.transparent,
          backgroundColor: const Color(0xFFDABBFA),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
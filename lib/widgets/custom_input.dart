import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInput extends StatelessWidget {
  final String placeholder;

  const CustomInput({
    super.key,
    required this.placeholder
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        hintText: placeholder,
        filled: true,
        fillColor: Color(0xFFF0EDE9),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.normal,
          fontSize: 16
        )
      ),
    );
  }
}
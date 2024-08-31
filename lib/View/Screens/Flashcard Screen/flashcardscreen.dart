import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class Flashcardscreen extends StatelessWidget {
  const Flashcardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UtilColors.primarycolor,
        centerTitle: true,
        title: Text(
          'Flash Card',
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 10 / 16,
            color: Colors.white, // Replace with your desired color
          ),
        ),
      ),
    );
  }
}

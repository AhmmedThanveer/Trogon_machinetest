import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

// Define the custom button widget
class Mybutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Mybutton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Background color
          side: BorderSide(
              color: UtilColors.primarycolor, width: 1), // Border side
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7), // Rounded corners
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 10), // Padding inside the button
          textStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}

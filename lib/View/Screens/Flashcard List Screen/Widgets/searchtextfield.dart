import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF5F5F5), // Background color #F5F5F5
        hintStyle: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          height: 24 / 13,
          color: Colors.grey,
        ),
        hintText: 'Search',
        prefixIcon: Icon(Icons.search), // Search icon
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none, // Removes the border
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      ),
    );
  }
}

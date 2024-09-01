import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  TabButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? UtilColors.whitecolor
              : Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected
                ? UtilColors.primarycolor
                : Colors.white.withOpacity(0.5),
            width: 2,
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}

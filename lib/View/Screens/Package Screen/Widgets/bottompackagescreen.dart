import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20List%20Screen/flashcardlistingscreen.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/flashcardscreen.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class packagebottom extends StatelessWidget {
  const packagebottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₹ 4500',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: UtilColors.textblack,
                ),
              ),
              Text(
                'For 3 Months Plan',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: UtilColors.textblack,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Flashcardlistingscreen(),
                  ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: UtilColors.primarycolor, // Background color
              // Border side
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7), // Rounded corners
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10), // Padding inside the button
              textStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            child: const Text(
              'Buynow',
              style: TextStyle(color: UtilColors.whitecolor),
            ),
          ),
        ],
      ),
    );
  }
}

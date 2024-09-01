import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:trogon_machinetest/View/Screens/List/list.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class progressindicator extends StatelessWidget {
  const progressindicator({
    super.key,
    required this.progress,
    required int currentPageIndex,
  }) : _currentPageIndex = currentPageIndex;

  final double progress;
  final int _currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Everyday Phrases',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              height: 10 / 16,
              color: UtilColors.textblack,
            ),
          ),
          CircularPercentIndicator(
            radius: 35.0,
            lineWidth: 8.0,
            percent: progress,
            center: Text(
              "${((_currentPageIndex + 1))}/${wordPairs.length}",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            progressColor: UtilColors.primarycolor,
          ),
        ],
      ),
    );
  }
}

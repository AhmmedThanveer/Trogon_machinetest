import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/clippercontainer.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class ZigzagContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenH / 1,
      child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: screenH / 2.5, // Adjust height as needed
              width: 322,
              decoration: BoxDecoration(
                color: UtilColors.packagecolor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BASIC',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 10 / 16,
                            color: UtilColors.textblack,
                          ),
                        ),
                        Text(
                          '₹ 4500',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 10 / 16,
                            color: UtilColors.textblack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipPath(
                    clipper: ZigzagClipper(),
                    child: Container(
                      width: 320,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: UtilColors.packagecolor,
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          TimelineItem(
                            textStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: UtilColors.textblack,
                            ),
                            text:
                                'Self-Paced Learning - I Am Self-Motivated And Disciplined To Learn By Myself Through Recorded Lessons.',
                          ),
                          TimelineItem(
                            textStyle: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 24 / 13,
                              color: Colors.black,
                            ),
                            text:
                                'Recorded Lessons By Aparna (6-Month Validity)',
                          ),
                          TimelineItem(
                            textStyle: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              height: 24 / 13,
                              color: Colors.black,
                            ),
                            text:
                                'AI-Powered Speech/Pronunciation Practice Is Available For 2 Weeks With An Option To Extend With An Additional Add-On Subscription.',
                          ),
                          SizedBox(height: 16),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "The difference is basic only has ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 24 / 13,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "2 weeks free vs. Gold",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 24 / 13,
                                    color: UtilColors.packagecolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Anyone can add on more time with Ai features.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 24 / 13,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Rs. 300/ month.  ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 24 / 13,
                                    color: UtilColors.packagecolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class ZigzagContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Container(
      height: screenH / 1.45,
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
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: UtilColors.packagecolor,
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
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
                      fontSize: 13, // 13px
                      fontWeight: FontWeight
                          .w500, // Closest to 540 (in Flutter, it should be 500 or 600)
                      height: 24 /
                          13, // Line height of 24px, converted to Flutter's line height
                      textStyle: const TextStyle(
                        color:
                            Colors.black, // Default color, you can change this
                      ),
                    ),
                    text: 'Recorded Lessons By Aparna (6-Month Validity)',
                  ),
                  TimelineItem(
                    textStyle: GoogleFonts.poppins(
                      fontSize: 13, // 13px
                      fontWeight: FontWeight
                          .w500, // Closest to 540 (in Flutter, it should be 500 or 600)
                      height: 24 /
                          13, // Line height of 24px, converted to Flutter's line height
                      textStyle: const TextStyle(
                        color:
                            Colors.black, // Default color, you can change this
                      ),
                    ),
                    text:
                        'AI-Powered Speech/Pronunciation Practice Is Available For 2 Weeks With An Option To Extend With An Additional Add-On Subscription.',
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "The difference is basic only has ",
                          style: GoogleFonts.poppins(
                            fontSize: 13, // 13px
                            fontWeight: FontWeight
                                .w500, // Closest to 540 (in Flutter, it should be 500 or 600)
                            height: 24 /
                                13, // Line height of 24px, converted to Flutter's line height
                            textStyle: const TextStyle(
                              color: Colors
                                  .black, // Default color, you can change this
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "2 weeks free vs. Gold",
                          style: GoogleFonts.poppins(
                            fontSize: 13, // 13px
                            fontWeight: FontWeight
                                .w500, // Closest to 540 (in Flutter, it should be 500 or 600)
                            height: 24 /
                                13, // Line height of 24px, converted to Flutter's line height
                            textStyle: const TextStyle(
                                color: UtilColors
                                    .packagecolor // Default color, you can change this
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Anyone can add on more time with Ai features.",
                          style: GoogleFonts.poppins(
                            fontSize: 13, // 13px
                            fontWeight: FontWeight
                                .w500, // Closest to 540 (in Flutter, it should be 500 or 600)
                            height: 24 /
                                13, // Line height of 24px, converted to Flutter's line height
                            textStyle: const TextStyle(
                              color: Colors
                                  .black, // Default color, you can change this
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " Rs. 300/ month.  ",
                          style: GoogleFonts.poppins(
                            fontSize: 13, // 13px
                            fontWeight: FontWeight
                                .w500, // Closest to 540 (in Flutter, it should be 500 or 600)
                            height: 24 /
                                13, // Line height of 24px, converted to Flutter's line height
                            textStyle: const TextStyle(
                                color: UtilColors
                                    .packagecolor // Default color, you can change this
                                ),
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
  }
}

class TimelineItem extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  TimelineItem({required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.circle, size: 14, color: Colors.white),
            ),
            CustomPaint(
              painter: DottedLinePainter(),
              child: Container(
                width: 1,
                height: 70,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.purple
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    var max = size.height;
    var dashWidth = 5;
    var dashSpace = 5;
    double startY = 0;

    while (startY < max) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class FeatureItem extends StatelessWidget {
  final String text;

  FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            color: Colors.purple,
            size: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ZigzagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double zigzagHeight = 16;
    double zigzagWidth = 16;

    path.moveTo(0, zigzagHeight);
    for (double x = 0; x < size.width; x += zigzagWidth) {
      path.lineTo(x + zigzagWidth / 2, 0);
      path.lineTo(x + zigzagWidth, zigzagHeight);
    }
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

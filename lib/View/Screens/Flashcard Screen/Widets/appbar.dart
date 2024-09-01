import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedAppBarClipper(),
      child: Container(
        height: 200,
        color: UtilColors.primarycolor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 16.0, right: 16.0),
          child: Row(
            children: [
              SizedBox(
                width: 47,
                height: 47,
                child: IconButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: UtilColors.primarycolor,
                    shape: const CircleBorder(
                      side: BorderSide(color: UtilColors.whitecolor, width: 2),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: UtilColors.whitecolor,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'Flash Card',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  height: 10 / 16,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Opacity(
                opacity: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.purple,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

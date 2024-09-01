import 'package:flutter/material.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/clippercontainer.dart';

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
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.circle, size: 14, color: Colors.white),
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
        SizedBox(width: 16),
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

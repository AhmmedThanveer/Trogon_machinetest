import 'package:flutter/material.dart';

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

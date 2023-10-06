import 'package:flutter/material.dart';
import 'package:home_work/assignemt1/assignment%20_1.dart';

import 'data/category_data.dart';


class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color(0xFF000000)  // Set border color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0;  // Set border width

    final Path path = Path()
      ..moveTo(348, 0)
      ..lineTo(348, 306)
      ..quadraticBezierTo(348, 335.247, 318.567, 382.478)
      ..quadraticBezierTo(337.271, 363.125, 302.675, 398.92)
      ..lineTo(261, 408)
      ..lineTo(0, 408)
      ..lineTo(0, 102)
      ..lineTo(0, 72.753)
      ..lineTo(55, 8)
      ..quadraticBezierTo(29.433, 25.522, 45.325, 9.08)
      ..lineTo(87, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // Since the shape is static, we don't need to repaint it.
  }
}
// Use the CustomPaint widget to paint the custom shape within a container or as the background of an image:
// dart
// Copy code
class CustomShapeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Column(
        children:[ Container(
          width: 348,  // Set the width and height to match your shape size
          height: 408,
          child: CustomPaint(
            painter: CustomShapePainter(),
            child: PictureModel(categories_data[1].imageUrl), // Add your content here, e.g., an Image widget
          ),


        ),
      ]),
    );
  }
}
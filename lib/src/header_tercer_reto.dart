import 'package:flutter/material.dart';

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // propiedades

    paint.color = Color.fromARGB(255, 148, 24, 200);
    paint.style = PaintingStyle.fill; //rellena

    final path = Path();

    path.lineTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.2, size.width, size.height * 0.15);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

    //path.quadraticBezierTo(size.width * 0.5, size.height * 0.15, size.width, size.height * 0.20); CURVATURA HACIA ARRIBA
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

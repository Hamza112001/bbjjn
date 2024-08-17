import 'package:flutter/widgets.dart';

class NamePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1241667, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.2447917,
        size.height * 0.4175000,
        size.width * 0.2447917,
        size.height * 0.4175000,
        size.width * 0.2850000,
        size.height * 0.3900000);
    path_0.quadraticBezierTo(size.width * 0.3391583, size.height * 0.3349000,
        size.width * 0.5016667, size.height * 0.3326714);
    path_0.quadraticBezierTo(size.width * 0.6418167, size.height * 0.3423429,
        size.width * 0.7075000, size.height * 0.4085714);
    path_0.quadraticBezierTo(size.width * 0.7955500, size.height * 0.3757714,
        size.width * 0.8783333, size.height * 0.5028571);
    path_0.quadraticBezierTo(size.width * 0.9114000, size.height * 0.6134143,
        size.width * 0.8767833, size.height * 0.6472286);
    path_0.cubicTo(
        size.width * 0.8362750,
        size.height * 0.4886714,
        size.width * 0.7254667,
        size.height * 0.5418571,
        size.width * 0.7058333,
        size.height * 0.6469571);
    path_0.quadraticBezierTo(size.width * 0.7058333, size.height * 0.6477179,
        size.width * 0.7058333, size.height * 0.6500000);
    path_0.quadraticBezierTo(size.width * 0.4614583, size.height * 0.6500000,
        size.width * 0.3800000, size.height * 0.6500000);
    path_0.cubicTo(
        size.width * 0.3581417,
        size.height * 0.4851714,
        size.width * 0.2309000,
        size.height * 0.5105571,
        size.width * 0.2108333,
        size.height * 0.6428571);
    path_0.quadraticBezierTo(size.width * 0.1773917, size.height * 0.6618571,
        size.width * 0.1233333, size.height * 0.6457143);
    path_0.lineTo(size.width * 0.1233333, size.height * 0.6457143);
    path_0.quadraticBezierTo(size.width * 0.1004250, size.height * 0.5940571,
        size.width * 0.1241667, size.height * 0.5000000);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(NamePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(NamePainter oldDelegate) => false;
}

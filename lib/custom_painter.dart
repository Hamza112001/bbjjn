import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  final DateTime now;
  MyCustomPainter({required this.now});
  @override
  void paint(Canvas canvas, Size size) {
    //   var hour = 5;
    // var minutes = 30;
    const roman = [
      'XII',
      'I',
      'II',
      'III',
      'VI',
      'V',
      'VI',
      'VII',
      'VIII',
      'IX',
      'X',
      'XI',
    ];
    final double height = size.height;
    final double width = size.width;
    final double radius = min(height, width) / 2;
    final Offset centerOffset = Offset(width / 2, height / 2);

    final double minutesLineWidth = radius * 0.03;
    final double minutesLineLength = radius * 0.1;

    final double hoursLineWidth = radius * 0.05;
    final double hoursLineLength = radius * 0.15;

    final double minutesNeedleBaseRadius = radius * 0.06;
    final double hoursNeedleBaseRadius = radius * 0.1;
    final double secondsNeedleBaseRadius = radius * 0.03;

    final double hoursNeedleWidth = radius * 0.07;
    final double hoursNeedleGap = radius * 0.3;

    final double minutesNeedleWidth = radius * 0.04;
    final double minutesNeedleGap = radius * 0.25;

    final double secondsNeedleWidth = radius * 0.02;
    final double secondsNeedleGap = radius * 0.2;

    const totalNoOfRotation = 60;
    const angle = 2 * pi / totalNoOfRotation;

    // color for dial
    Paint dialColor = Paint()..color = Colors.cyan;

    // color for minutesLine
    Paint minutesLineColor = Paint()
      ..color = Colors.red
      ..strokeWidth = minutesLineWidth;

    // color forHoursLine
    Paint hoursLinePaint = Paint()
      ..color = Colors.brown
      ..strokeWidth = hoursLineWidth;

    // draw dial
    canvas.drawCircle(centerOffset, radius, dialColor);
    //hoursBase
    canvas.drawCircle(
        centerOffset, hoursNeedleBaseRadius, Paint()..color = Colors.white);

    //minutesBase
    canvas.drawCircle(
        centerOffset, minutesNeedleBaseRadius, Paint()..color = Colors.green);

    // secondsBase
    canvas.drawCircle(
        centerOffset, secondsNeedleBaseRadius, Paint()..color = Colors.red);

    canvas.save();

    canvas.translate(radius, radius);

    for (var i = 0; i < 60; i++) {
      Paint lineColor;
      double tickLength;
      bool isHour = i % 5 == 0;
      var hours = now.hour <= 12 ? now.hour : now.hour - 12;
      if (i == now.second) {
        // draw secondsNeedle
        canvas.drawLine(
            Offset(0, -secondsNeedleBaseRadius),
            Offset(0, -radius + secondsNeedleGap),
            Paint()
              ..color = Colors.red
              ..strokeWidth = secondsNeedleWidth
              ..strokeCap = StrokeCap.round);
      }
      if (i / 5 == hours) {
        // draw hoursNeedle
        canvas.drawLine(
            Offset(0, -hoursNeedleBaseRadius),
            Offset(0, -radius + hoursNeedleGap),
            Paint()
              ..color = Colors.white
              ..strokeWidth = hoursNeedleWidth
              ..strokeCap = StrokeCap.round);
      }
      if (i == now.minute) {
        // draw minutesNeedle
        canvas.drawLine(
            Offset(0, -minutesNeedleBaseRadius),
            Offset(0, -radius + minutesNeedleGap),
            Paint()
              ..color = Colors.green
              ..strokeWidth = minutesNeedleWidth
              ..strokeCap = StrokeCap.round);
      }
      if (isHour) {
        tickLength = hoursLineLength;
        lineColor = hoursLinePaint;
      } else {
        tickLength = minutesLineLength;
        lineColor = minutesLineColor;
      }
      canvas.drawLine(
          Offset(0, -radius), Offset(0, -radius + tickLength), lineColor);

      canvas.rotate(angle);
    }

    canvas.restore();
    // draw minutesLine
    // canvas.drawLine(Offset(centerOffset.dx, 0),
    //     Offset(centerOffset.dx, radius - minutesLineLength), minutesLineColor);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyCustomPainter oldDelegate) => true;
}

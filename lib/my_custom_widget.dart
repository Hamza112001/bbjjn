import 'package:custom_clock_again/custom_painter.dart';
import 'package:flutter/material.dart';

class MyClockWidget extends StatelessWidget {
  const MyClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyCustomPainter(now: DateTime.now()),
      child: const SizedBox(
        height: 300,
        width: 300,
      ),
    );
  }
}

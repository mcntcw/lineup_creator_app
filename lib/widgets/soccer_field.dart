import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lineup_creator_app/utils/colors.dart';

class SoccerField extends StatelessWidget {
  final Color fieldLineColor;

  const SoccerField({
    Key? key,
    required this.fieldLineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8750,
        height: MediaQuery.of(context).size.height * 0.7493,
        decoration: const BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  border: Border.all(
                    color: fieldLineColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 120,
              right: 120,
              top: 50,
              bottom: 50,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: fieldLineColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 120,
              right: 120,
              top: MediaQuery.of(context).size.height * 0.3723,
              child: Container(
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  color: fieldLineColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * 0.3746,
              bottom: MediaQuery.of(context).size.height * 0.3746,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: fieldLineColor,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            //BRAMKA GÓRNA
            Positioned(
              left: 90,
              right: 90,
              top: 0,
              height: 90,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  border: Border.all(
                    color: fieldLineColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 130,
              right: 130,
              top: 0,
              height: 40,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  border: Border.all(
                    color: fieldLineColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 110,
              right: 110,
              top: 60,
              child: Container(
                width: 5.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: fieldLineColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              left: 110,
              right: 110,
              top: -10,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CustomPaint(
                  painter: MyPainter(rotation: 0.91, fieldLineColor: fieldLineColor),
                  child: const SizedBox(
                    height: 72,
                  ),
                ),
              ),
            ),

            //BRAMKA DOLNA
            Positioned(
              left: 90,
              right: 90,
              bottom: 0,
              height: 90,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  border: Border.all(
                    color: fieldLineColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 130,
              right: 130,
              bottom: 0,
              height: 40,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  border: Border.all(
                    color: fieldLineColor,
                    width: 3.0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 110,
              right: 110,
              bottom: 60,
              child: Container(
                width: 5.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: fieldLineColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned(
              left: 110,
              right: 110,
              bottom: 62,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CustomPaint(
                  painter: MyPainter(rotation: 10.0, fieldLineColor: fieldLineColor),
                  child: const SizedBox(
                    height: 72,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double rotation;
  final Color fieldLineColor;
  MyPainter({required this.rotation, required this.fieldLineColor});

  @override
  void paint(Canvas canvas, Size size) {
    final redCircle = Paint()
      ..color = fieldLineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final arcRect = Rect.fromCircle(center: size.bottomCenter(Offset.zero), radius: size.shortestSide / 2);
    double startAngle = -pi / rotation;
    const sweepAngle = -2 * pi * 0.4;

    canvas.drawArc(arcRect, startAngle, sweepAngle, false, redCircle);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
}

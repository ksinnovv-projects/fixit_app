import 'package:flutter/material.dart';

class MultiColorCircle extends StatelessWidget {
  final List<Color> colors;
  final List<double> percentages;
  final double size;
  final double strokeWidth;

  const MultiColorCircle({
    Key? key,
    required this.colors,
    required this.percentages,
    this.size = 100.0,
    this.strokeWidth = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(
      colors.length == percentages.length,
      "The length of colors and percentages lists must be equal.",
    );
    assert(
      percentages.reduce((a, b) => a + b) == 100.0,
      "The sum of all percentages must be 100.",
    );

    return Center(
      child: CustomPaint(
        size: Size(size, size),
        painter: MultiColorCirclePainter(
          colors: colors,
          percentages: percentages,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}

class MultiColorCirclePainter extends CustomPainter {
  final List<Color> colors;
  final List<double> percentages;
  final double strokeWidth;

  MultiColorCirclePainter({
    required this.colors,
    required this.percentages,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = (size.width - strokeWidth) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    double startAngle = -90 * 3.14159 / 180; // Start at the top

    for (int i = 0; i < colors.length; i++) {
      final sweepAngle = 2 * 3.14159 * (percentages[i] / 100);

      final paint = Paint()
        ..color = colors[i]
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.butt;

      // Draw each arc segment
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      // Update the start angle for the next segment
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
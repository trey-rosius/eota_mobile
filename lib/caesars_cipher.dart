import 'package:flutter/material.dart';
import 'dart:math';

class CaesarWheel extends StatefulWidget {
  @override
  _CaesarWheelState createState() => _CaesarWheelState();
}

class _CaesarWheelState extends State<CaesarWheel> {
  double innerWheelAngle = 0.0;
  int shiftCount = 0;
  final List<String> letters = List.generate(26, (index) => String.fromCharCode(65 + index)); // A-Z
  final double sectionAngle = (2 * pi) / 26;

  void _onPanEnd(DragEndDetails details) {
    setState(() {
      // Snap to nearest section
      final snappedAngle = (innerWheelAngle / sectionAngle).round() * sectionAngle;
      shiftCount = (snappedAngle / sectionAngle).round();
      innerWheelAngle = snappedAngle;
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      innerWheelAngle += details.delta.dx * 0.005;  // Smoother increment
      shiftCount = (innerWheelAngle / sectionAngle).round();
    });
  }

  void _increaseShift() {
    setState(() {
      shiftCount += 1;
      innerWheelAngle = shiftCount * sectionAngle;
    });
  }

  void _decreaseShift() {
    setState(() {
      shiftCount -= 1;
      innerWheelAngle = shiftCount * sectionAngle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onPanUpdate: _onPanUpdate,
            onPanEnd: _onPanEnd,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Outer wheel
                CustomPaint(
                  size: Size(500, 500),
                  painter: WheelPainter(
                    letters: letters,
                    fillColor: Colors.white,
                    radiusScale: 0.95,
                    innerCircleRadiusScale: 0.6,
                  ),
                ),
                // Inner wheel (rotatable)
                Transform.rotate(
                  angle: innerWheelAngle,
                  child: CustomPaint(
                    size: Size(380, 380),
                    painter: WheelPainter(
                      letters: letters,
                      fillColor: Colors.white,
                      radiusScale: 0.85,
                      innerCircleRadiusScale: 0.6,
                    ),
                  ),
                ),
                // Arrow Indicator
                Positioned(
                  top: 190,
                  child: Icon(
                    Icons.arrow_drop_up,
                    size: 45,
                    color: Colors.black,
                  ),
                ),
                // Shift Count Display
                Center(
                  child: Text(
                    'Shift: $shiftCount',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decreaseShift,
                child: Text('- Shift'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: _increaseShift,
                child: Text('+ Shift'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WheelPainter extends CustomPainter {
  final List<String> letters;
  final Color fillColor;
  final double radiusScale;
  final double innerCircleRadiusScale;

  WheelPainter({
    required this.letters,
    required this.fillColor,
    this.radiusScale = 0.9,
    this.innerCircleRadiusScale = 0.6,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = Colors.blue;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 * radiusScale;
    final innerCircleRadius = radius * innerCircleRadiusScale;

    // Draw the wheel background
    paint.style = PaintingStyle.fill;
    paint.color = fillColor;
    canvas.drawCircle(center, radius, paint);

    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, paint);

    // Divide circle into sections
    final sectionAngle = 2 * pi / letters.length;
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (int i = 0; i < letters.length; i++) {
      final angle = i * sectionAngle;

      // Calculate positions for letters with padding
      final textRadius = radius * 0.85;
      final x = center.dx + textRadius * cos(angle + sectionAngle / 2);
      final y = center.dy + textRadius * sin(angle + sectionAngle / 2);

      // Draw text for each letter
      textPainter.text = TextSpan(
        text: letters[i],
        style: TextStyle(fontSize: 18, color: Colors.black),
      );
      textPainter.layout();
      textPainter.paint(
          canvas, Offset(x - textPainter.width / 2, y - textPainter.height / 2));

      // Draw radial lines from inner circle radius to the outer edge
      final startX = center.dx + innerCircleRadius * cos(angle);
      final startY = center.dy + innerCircleRadius * sin(angle);
      final endX = center.dx + radius * cos(angle);
      final endY = center.dy + radius * sin(angle);
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
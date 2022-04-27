import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const ProgresBarC());
}

class ProgresBarC extends StatefulWidget {
  const ProgresBarC({Key? key}) : super(key: key);

  @override
  State<ProgresBarC> createState() => _ProgresBarCState();
}

class _ProgresBarCState extends State<ProgresBarC> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
        ),
        child: const RadialPercentWidgfet(
          child: Padding(
            padding: EdgeInsets.all(11.0),
            child: Text(
              "72%",
              textDirection: ,
              style: TextStyle(color: Colors.yellow, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}

class RadialPercentWidgfet extends StatelessWidget {
  final Widget child;
  const RadialPercentWidgfet({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: MyPainter(),
        ),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Center(child: child),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  final double percent = 0.3;
  @override
  void paint(Canvas canvas, Size size) {
    final backGroundPaint = Paint();
    backGroundPaint.color = Colors.black;
    backGroundPaint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, backGroundPaint);

    final filedlPaint = Paint();
    filedlPaint.color = Colors.red;
    filedlPaint.style = PaintingStyle.stroke;
    filedlPaint.strokeWidth = 5;
    canvas.drawArc(
      const Offset(5.5, 5.5) & Size(size.width - 11, size.height - 11),
      pi * 2 * percent - (pi / 2),
      pi * 2 * (1.0 - percent),
      false,
      filedlPaint,
    );
    final feellPaint = Paint();
    feellPaint.color = Colors.yellow;
    feellPaint.style = PaintingStyle.stroke;
    feellPaint.strokeWidth = 5;
    feellPaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
      const Offset(5.5, 5.5) & Size(size.width - 11, size.height - 11),
      -pi / 2,
      pi * 2 * percent,
      false,
      feellPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

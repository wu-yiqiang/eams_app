import 'package:flutter/material.dart';
import 'dart:math' as math;

class ArcView extends StatefulWidget {
  ArcView({Key? key, required this.total, required this.currentCount})
    : super(key: key);
  double width = 200;
  double height = 200;
  final int total;
  final int currentCount;
  @override
  State<StatefulWidget> createState() {
    return ArcViewState();
  }
}

class ArcViewState extends State<ArcView> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Curve curve;
  // double progress=0;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      lowerBound: 0,
      upperBound: widget.currentCount / widget.total * 100,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {
        print(controller.value);
      });
    });
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.forward(from: 0);
      },
      child: Stack(
        children: [
          Transform.rotate(
            angle: -(math.pi + math.pi / 4 + math.asin(22 * 0.5 / 100)),
            child: 
            CustomPaint(
            painter: ArcPainter(
              strokeWidth: 22,
              strokeCap: StrokeCap.round,
              gradientColors: const [Color(0xFF54D6A7), Color(0xFF00CDDA)],
              bgColor: const Color(0xFFF3F4F6),
              progress: controller.value,
              roundColor: Colors.white,
              width: 200, //需要与widget.width一致
            ),
            size: Size(widget.width, widget.height), // 调整大小以适应你的需求
          ),
          ),
          Positioned(
            left: 55,
            top: 90,
            child: Text(
              "${widget.currentCount} / ${widget.total}",
              style: TextStyle(
                color: Color(0xFF54D6A7),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  double width;

  ///圆弧粗细
  double strokeWidth;

  ///圆弧边缘显示样式
  StrokeCap strokeCap;

  ///进度条渐变色
  List<Color> gradientColors;

  ///背景颜色
  Color bgColor;

  ///百分比进度，自己内部转换为具体度数
  double progress;

  ///圆点颜色
  Color roundColor;

  ArcPainter({
    required this.width,
    required this.strokeWidth,
    required this.strokeCap,
    required this.gradientColors,
    required this.bgColor,
    required this.progress,
    required this.roundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    /// 修正后的开始角度，弧度制
    final startAngle = math.asin(strokeWidth * 0.5 / (width / 2));

    /// 扫过的角度，弧度制
    final sweepAngle = (math.pi + math.pi / 2) * progress / 100;

    var gradient = SweepGradient(
      center: Alignment.center,
      colors: gradientColors, // 渐变颜色列表
      startAngle: 0, // 渐变起始位置
      endAngle: 2 * math.pi, // 渐变结束位置
    );

    final paint = Paint()
      ..shader = gradient
          .createShader(rect) // 使用渐变作为画笔的颜色
      ..style = PaintingStyle.stroke
      ..strokeCap = strokeCap
      ..strokeWidth = strokeWidth;
    final bgPaint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.stroke
      ..strokeCap = strokeCap
      ..strokeWidth = strokeWidth;

    canvas.drawArc(rect, startAngle, math.pi + math.pi / 2, false, bgPaint);
    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
    final double drawRadius = width / 2;
    final double center = width / 2;

    ///修正原点初始角度 90度
    var deg = degToRad(90) + startAngle + sweepAngle;
    final double dx = center + drawRadius * math.sin(deg);
    final double dy = center - drawRadius * math.cos(deg);
    Offset offsetCenter = Offset(dx, dy);
    final roundPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = roundColor;
    // ..strokeWidth = (outerRadius - innerRadius);
    canvas.drawCircle(offsetCenter, strokeWidth / 2 - 2, roundPaint);
  }

  /// 度数转类似于π的那种角度
  double degToRad(double deg) => deg * (math.pi / 180.0);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

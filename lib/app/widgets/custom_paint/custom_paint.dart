import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final Color color;
  RPSCustomPainter(
    this.color,
  );
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9546667, size.height * 0.9973890);
    path_0.lineTo(size.width * 0.7760000, size.height * 0.9973890);
    path_0.cubicTo(
        size.width * 0.7530133,
        size.height * 0.9973890,
        size.width * 0.7336533,
        size.height * 0.9805483,
        size.width * 0.7309867,
        size.height * 0.9582245);
    path_0.lineTo(size.width * 0.7304000, size.height * 0.9582245);
    path_0.cubicTo(
        size.width * 0.7122133,
        size.height * 0.8462663,
        size.width * 0.6153333,
        size.height * 0.7650131,
        size.width * 0.5000000,
        size.height * 0.7650131);
    path_0.cubicTo(
        size.width * 0.3846667,
        size.height * 0.7650131,
        size.width * 0.2877867,
        size.height * 0.8462663,
        size.width * 0.2696000,
        size.height * 0.9582245);
    path_0.lineTo(size.width * 0.2690133, size.height * 0.9582245);
    path_0.cubicTo(
        size.width * 0.2663467,
        size.height * 0.9805483,
        size.width * 0.2469867,
        size.height * 0.9973890,
        size.width * 0.2240000,
        size.height * 0.9973890);
    path_0.lineTo(size.width * 0.04533333, size.height * 0.9973890);
    path_0.cubicTo(
        size.width * 0.02234667,
        size.height * 0.9973890,
        size.width * 0.002986667,
        size.height * 0.9805483,
        size.width * 0.0003200000,
        size.height * 0.9582245);
    path_0.lineTo(0, size.height * 0.9582245);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.7780679);
    path_0.lineTo(size.width, size.height * 0.9530026);
    path_0.lineTo(size.width, size.height * 0.9582245);
    path_0.lineTo(size.width * 0.9996800, size.height * 0.9582245);
    path_0.cubicTo(
        size.width * 0.9970133,
        size.height * 0.9805483,
        size.width * 0.9776533,
        size.height * 0.9973890,
        size.width * 0.9546667,
        size.height * 0.9973890);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = // Color(0xfffc6011)
        color.withOpacity(1.0);
    canvas.drawShadow(
        path_0.shift(Offset(0, 10)), Colors.grey.withOpacity(.2), 3, true);
    canvas.drawPath(path_0, paint_0_fill);
    // canvas.drawImage(image, Offset.zero, Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// class RPSCustomPainter2 extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.9546667, size.height * 0.9973890);
//     path_0.lineTo(size.width * 0.7760000, size.height * 0.9973890);
//     path_0.cubicTo(
//         size.width * 0.7530133,
//         size.height * 0.9973890,
//         size.width * 0.7336533,
//         size.height * 0.9805483,
//         size.width * 0.7309867,
//         size.height * 0.9582245);
//     path_0.lineTo(size.width * 0.7304000, size.height * 0.9582245);
//     path_0.cubicTo(
//         size.width * 0.7122133,
//         size.height * 0.8462663,
//         size.width * 0.6153333,
//         size.height * 0.7650131,
//         size.width * 0.5000000,
//         size.height * 0.7650131);
//     path_0.cubicTo(
//         size.width * 0.3846667,
//         size.height * 0.7650131,
//         size.width * 0.2877867,
//         size.height * 0.8462663,
//         size.width * 0.2696000,
//         size.height * 0.9582245);
//     path_0.lineTo(size.width * 0.2690133, size.height * 0.9582245);
//     path_0.cubicTo(
//         size.width * 0.2663467,
//         size.height * 0.9805483,
//         size.width * 0.2469867,
//         size.height * 0.9973890,
//         size.width * 0.2240000,
//         size.height * 0.9973890);
//     path_0.lineTo(size.width * 0.04533333, size.height * 0.9973890);
//     path_0.cubicTo(
//         size.width * 0.02234667,
//         size.height * 0.9973890,
//         size.width * 0.002986667,
//         size.height * 0.9805483,
//         size.width * 0.0003200000,
//         size.height * 0.9582245);
//     path_0.lineTo(0, size.height * 0.9582245);
//     path_0.lineTo(0, 0);
//     path_0.lineTo(size.width, 0);
//     path_0.lineTo(size.width, size.height * 0.7780679);
//     path_0.lineTo(size.width, size.height * 0.9530026);
//     path_0.lineTo(size.width, size.height * 0.9582245);
//     path_0.lineTo(size.width * 0.9996800, size.height * 0.9582245);
//     path_0.cubicTo(
//         size.width * 0.9970133,
//         size.height * 0.9805483,
//         size.width * 0.9776533,
//         size.height * 0.9973890,
//         size.width * 0.9546667,
//         size.height * 0.9973890);
//     path_0.close();

//     Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
//     paint_0_fill.color = Color(0xfffc6011).withOpacity(1.0);
//     canvas.drawPath(path_0, paint_0_fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

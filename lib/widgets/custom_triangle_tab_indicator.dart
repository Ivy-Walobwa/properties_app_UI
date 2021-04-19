import 'package:flutter/material.dart';

class CustomTriangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CustomTriangleTabIndicator({@required Color color,})
      : _painter = DrawTriangle(color);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class DrawTriangle extends BoxPainter {
  Paint _paint;

  DrawTriangle(Color color) {
    _paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset triangleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - 10);
    var path = Path();

    path.moveTo(triangleOffset.dx, triangleOffset.dy);
    path.lineTo(triangleOffset.dx + 10, triangleOffset.dy + 10);
    path.lineTo(triangleOffset.dx - 10, triangleOffset.dy + 10);

    path.close();
    canvas.drawPath(path, _paint);
  }
}
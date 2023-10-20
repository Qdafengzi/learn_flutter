import 'dart:async';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CanvasWidget extends StatefulWidget {
  const CanvasWidget({super.key, required this.title});

  final String title;

  @override
  State<CanvasWidget> createState() => _CanvasWidgetState();
}

class _CanvasWidgetState extends State<CanvasWidget> {
  ScrollController controller = ScrollController();

  late ui.Image image;

  Future<void> loadImage() async {
    image =
        await _loadImageByProvider(const AssetImage("images/ic_flutter.png"));
    setState(() {});
  }

  Future<ui.Image> _loadImageByProvider(ImageProvider provider,
      {ImageConfiguration config = ImageConfiguration.empty}) async {
    Completer<ui.Image> completer = Completer<ui.Image>();
    late ImageStreamListener listener;
    ImageStream stream = provider.resolve(config);
    listener = ImageStreamListener((ImageInfo frame, bool sync) {
      final ui.Image image = frame.image;
      completer.complete(image);
      stream.removeListener(listener);
    });
    stream.addListener(listener);
    return completer.future;
  }

  @override
  void initState() {
    super.initState();
    loadImage();
  }

  @override
  Widget build(BuildContext context) {
    var winW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          controller: controller,
          child: Column(children: [
            CustomPaint(
              size: Size(winW / 2, winW / 2),
              painter: CirclePainter(),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomPaint(
              size: Size(winW / 2, winW / 2),
              painter: PointPainter(),
            ),
            const SizedBox(height: 10),
            CustomPaint(
              size: Size(winW / 2, winW / 2),
              painter: LinePainter(),
            ),
            const SizedBox(height: 10),
            ClipRect(
              child: CustomPaint(
                size: Size(winW / 2, winW / 2),
                painter: ArcPainter(),
              ),
            ),
            const SizedBox(height: 10),
            ClipRect(
              child: CustomPaint(
                size: Size(winW / 2, winW / 2),
                painter: ImagePainter(image),
              ),
            ),
            const SizedBox(height: 10),
            CustomPaint(
              size: Size(winW / 2, winW / 2),
              painter: PathPainter(),
            ),

            //TODO：曲线
            const SizedBox(height: 10),
            CustomPaint(
              size: Size(winW / 2, winW / 2),
              painter: CubicPainter(),
            ),
          ])),
    );
  }
}

class CubicPainter extends CustomPainter {
  final Paint _paint = Paint()

    ..color = Colors.lightBlue;

  var path = Path();

  @override
  void paint(Canvas canvas, Size size) {
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);

    _paint.strokeWidth = 4;
    _paint.style = PaintingStyle.stroke;
    _paint.color = Colors.yellowAccent;

    //x1和y1: 控制点
    // x2和y2: 曲线目标定点
    // weight:权重,大于1，则曲线为双曲线； 如果权重等于 1，则为抛物线； 如果小于 1，则为椭圆
    path.moveTo(size.width / 5, size.width / 4);
    path.conicTo(
        size.width / 2, size.width / 2, size.width - 10, size.width / 4, 1);
    canvas.drawPath(path, _paint);
    canvas.save();
    canvas.restore();

    _paint.color = Colors.red;
    Path path2 = Path();
    //起点 0  ,size.width/4
    // 终点 size.width *3/4
    // 控制点1
    // 控制点2|

    // to the given point (x3,y3), using the control points (x1,y1) and
    // (x2,y2).
    // path2.moveTo(size.width/4  ,size.width/2);
    path2.cubicTo(0 ,0,
        size.width, size.width /2,
        size.width , 0);
    canvas.drawPath(path2, _paint);
    _paint.color = Colors.red;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PathPainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.lightBlue;
  var path = Path();

  @override
  void paint(Canvas canvas, Size size) {
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);

    path.moveTo(size.width / 2, size.width / 2);
    path.lineTo(size.width / 2 + size.width / 4, size.width / 2);
    path.lineTo(
        size.width / 2 + size.width / 4, size.width / 2 + size.width / 4);
    path.lineTo(
        size.width / 2 - size.width / 4, size.width / 2 + size.width / 4);
    path.lineTo(size.width / 2 - size.width / 4, size.width / 2);
    // 最后将从当前位置连线到最开始的点
    path.close();
    _paint.color = Colors.yellowAccent;
    canvas.drawPath(path, _paint);
    _paint.color = Colors.lightBlue;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ImagePainter extends CustomPainter {
  final ui.Image image;

  ImagePainter(this.image);

  final Paint _paint = Paint()..color = Colors.lightBlue;

  @override
  void paint(Canvas canvas, Size size) {
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);
    // 原图片绘制
    try {
      canvas.drawImage(image, Offset.zero, _paint);

      // 缩小图片尺寸绘制
      var src =
          Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble());
      var dst = const Rect.fromLTWH(150, 0, 70, 70);
      canvas.drawImageRect(image, src, dst, _paint);
      _paint.color = Colors.lightBlue;
    } catch (e) {
      print(e);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PointPainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.lightBlue;
  List<Offset> points = [];

  @override
  void paint(Canvas canvas, Size size) {
    var d = size.width / 5;
    for (int i = 1; i < 5; i++) {
      var initData = d * i;
      points.add(Offset(size.width / 2, initData));
    }
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);
    _paint.color = Colors.pink;
    _paint.strokeWidth = 4;

    canvas.drawPoints(ui.PointMode.points, points, _paint);

    _paint.color = Colors.lightBlue;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LinePainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.lightBlue;
  List<Offset> points = [];

  @override
  void paint(Canvas canvas, Size size) {
    var p1 = const Offset(0, 0);
    var p2 = Offset(size.width, size.height);
    var p3 = Offset(0, size.height);
    var p4 = Offset(size.width, 0);
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);
    _paint.color = Colors.yellowAccent;
    _paint.strokeWidth = 2;
    canvas.drawLine(p1, p2, _paint);
    canvas.drawLine(p3, p4, _paint);
    _paint.color = Colors.lightBlue;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ArcPainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.lightBlue;
  List<Offset> points = [];

  @override
  void paint(Canvas canvas, Size size) {
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);
    _paint.color = Colors.yellowAccent;
    _paint.strokeWidth = 2;

    Rect rect2 = Rect.fromLTWH(0, 0, size.width / 2, size.height / 2);
    canvas.drawArc(rect2, 0, pi / 2, true, _paint);
    _paint.color = Colors.redAccent;
    canvas.drawArc(rect2, 0, -pi / 2, true, _paint);
    _paint.color = Colors.black54;
    canvas.drawArc(rect2, pi / 2, pi / 2, true, _paint);

    _paint.color = Colors.amber;
    canvas.drawArc(rect2, pi, pi / 2, true, _paint);
    _paint.color = Colors.lightBlue;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CirclePainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.lightBlue;

  @override
  void paint(Canvas canvas, Size size) {
    // 绘制
    RRect rect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(4));
    canvas.drawRRect(rect, _paint);
    _paint.color = Colors.grey;
    canvas.drawCircle(
        Offset(size.width / 2, size.width / 2), size.width / 4, _paint);
    _paint.color = Colors.redAccent;

    _paint.style = PaintingStyle.fill;
    var outer = RRect.fromRectXY(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.width / 2),
            width: 40,
            height: 40),
        0,
        0);
    var inner = RRect.fromRectXY(
        Rect.fromCenter(
            center: Offset(size.width / 2, size.width / 2),
            width: 30,
            height: 30),
        10,
        10);
    canvas.drawDRRect(outer, inner, _paint);
    _paint.color = Colors.lightBlue;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

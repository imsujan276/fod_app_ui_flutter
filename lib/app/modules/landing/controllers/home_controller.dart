import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as image;
import 'package:flutter/services.dart';

class GenImage {
  static Future<ui.Image> generateImage() async {
    ui.PictureRecorder recorder = new ui.PictureRecorder();
    Canvas c = new Canvas(recorder);
    var rect = new Rect.fromLTWH(0.0, 0.0, 200.0, 200.0);
    c.clipRect(rect);

    final paint = new Paint();
    paint.strokeWidth = 1;
    paint.color = const Color(0xFF0000FF);
    paint.style = PaintingStyle.stroke;
    final offset = new Offset(100.0, 100.0);
    c.drawCircle(offset, 50.0, paint);
    var picture = recorder.endRecording();
    final image = await picture.toImage(500, 500);
    return image;
  }
}

class HomeController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  getUiImage(String imageAssetPath, int height, int width) async {
    final ByteData assetImageByteData = await rootBundle.load(imageAssetPath);
    image.Image? baseSizeImage =
        image.decodeImage(assetImageByteData.buffer.asUint8List());
    // image.Image resizeImage =
    //     image.copyResize(baseSizeImage!, height: height, width: width);
    // ui.Codec codec =
    //     await ui.instantiateImageCodec(image.encodePng(resizeImage));
    // ui.FrameInfo frameInfo = await codec.getNextFrame();
    return MemoryImage(assetImageByteData.buffer.asUint8List());
    ;
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

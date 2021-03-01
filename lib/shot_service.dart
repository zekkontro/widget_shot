import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class ShotService {
  Future<File> takeWidgetShot(GlobalKey previewKey, String imagePath,
      {double pixelRatio}) async {
    RenderRepaintBoundary boundary =
        previewKey.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage(pixelRatio: pixelRatio);

    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();
    print(pngBytes);
    await File(imagePath).create();
    await File('$imagePath').writeAsBytes(pngBytes);
    File imgFile = new File('$imagePath');

    return imgFile;
  }
}

import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void main() {
  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
      'hello-html',
      (int viewId) => IFrameElement()
        ..width = '640'
        ..height = '360'
        ..src = 'https://www.youtube.com/embed/ukLBCRBlIkk'
        ..style.border = 'none');

  runApp( Padding(
        padding: EdgeInsets.all(25),
        child: SizedBox(
          width: 640,
          height: 360,
          child: HtmlElementView(viewType: 'hello-html'),
      ),
    ),
  );
}
library shot_widget;

import 'package:flutter/material.dart';

class ShotWidget extends StatefulWidget {
  final Widget child;
  final GlobalKey shotKey;
  const ShotWidget({this.child, this.shotKey});
  @override
  _ShotWidgetState createState() => _ShotWidgetState();
}

class _ShotWidgetState extends State<ShotWidget> {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: widget.shotKey,
      child: widget.child,
    );
  }
}

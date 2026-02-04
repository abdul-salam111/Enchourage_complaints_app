import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;
  final double? strokeWidth;

  const LoadingIndicator({
    super.key,
    this.size = 60,
    this.color,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: Platform.isAndroid
            ? CircularProgressIndicator(
                strokeWidth: strokeWidth ?? 4,
                color: color ?? Theme.of(context).progressIndicatorTheme.color,
              )
            : CupertinoActivityIndicator(
                radius: size / 2,
                color: color ?? Theme.of(context).progressIndicatorTheme.color,
              ),
      ),
    );
  }
}

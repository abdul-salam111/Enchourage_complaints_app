import 'package:flutter/material.dart';

/////////////////////////////////////  WIDGETS EXTENSIONS ////////////////////////////////////////
extension WidgetExtensions on Widget {
  // Add padding to a widget
  Widget withPadding(EdgeInsets padding) {
    return Padding(padding: padding, child: this);
  }

  // Add margin to a widget
  Widget withMargin(EdgeInsets margin) {
    return Container(margin: margin, child: this);
  }

  // Conditionally show a widget
  Widget showIf(bool condition) {
    return condition ? this : const SizedBox.shrink();
  }

  // Add a gesture detector (e.g., onTap)
  Widget onTap(VoidCallback onTap, {bool opaque = true}) {
    return GestureDetector(
      onTap: onTap,
      behavior: opaque ? HitTestBehavior.opaque : HitTestBehavior.deferToChild,
      child: this,
    );
  }

  // Center a widget
  Widget center() {
    return Center(child: this);
  }

  // Add a border to a widget
  Widget withBorder({
    Color color = Colors.black,
    double width = 1.0,
    BorderRadius? borderRadius,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
        borderRadius: borderRadius,
      ),
      child: this,
    );
  }

  // Add a background color to a widget
  Widget withBackground(Color color, {BorderRadius? borderRadius}) {
    return Container(
      decoration: BoxDecoration(color: color, borderRadius: borderRadius),
      child: this,
    );
  }

  // Add a tooltip to a widget
  Widget withTooltip(String message, {Decoration? decoration, double? height}) {
    return Tooltip(
      message: message,
      decoration: decoration,
      constraints: BoxConstraints(minHeight: height!),
      child: this,
    );
  }

  // Wrap a widget in a SizedBox with a specific width and height
  Widget withSize({double? width, double? height}) {
    return SizedBox(width: width, height: height, child: this);
  }

  // Wrap a widget in an Expanded widget
  Widget expanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  // Wrap a widget in a Flexible widget
  Widget flexible({int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(flex: flex, fit: fit, child: this);
  }

  // Add a hero animation to a widget
  Widget withHero({required String tag}) {
    return Hero(tag: tag, child: this);
  }

  // Add a rotation to a widget
  Widget withRotation(double angle, {Offset? origin}) {
    return Transform.rotate(angle: angle, origin: origin, child: this);
  }

  // Add a scale transformation to a widget
  Widget withScale(double scale, {Offset? origin}) {
    return Transform.scale(scale: scale, origin: origin, child: this);
  }

  // Add a translation transformation to a widget
  Widget withTranslation(Offset offset) {
    return Transform.translate(offset: offset, child: this);
  }

  // Add a fade animation to a widget
  Widget withFadeAnimation(AnimationController controller) {
    return FadeTransition(opacity: controller, child: this);
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////

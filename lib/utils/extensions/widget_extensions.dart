import 'package:flutter/material.dart';

extension CustomWidget on Widget {
  Widget scrollWidget(
          {Axis direction = Axis.vertical, ScrollController? controller}) =>
      SingleChildScrollView(
          controller: controller, scrollDirection: direction, child: this);

  Widget backgroundWidget(Color color) => Container(
        color: color,
        child: this,
      );

  Widget sizeWidget(double width, double height) => SizedBox(
        height: height,
        width: width,
        child: this,
      );

  Widget opacityWidget(double opacity) => Opacity(
        opacity: opacity,
        child: this,
      );

  Widget paddingWidget(
          {double left = 0,
          double top = 0,
          double right = 0,
          double bottom = 0}) =>
      Padding(
          padding: EdgeInsets.only(
              left: left, top: top, right: right, bottom: bottom),
          child: this);

  Widget paddingAllWidget(double padding) =>
      Padding(padding: EdgeInsets.all(padding), child: this);

  Widget marginWidget(
          {double left = 0,
          double top = 0,
          double right = 0,
          double bottom = 0}) =>
      Container(
          margin: EdgeInsets.only(
              left: left, top: top, right: right, bottom: bottom),
          child: this);

  Widget marginAllWidget(double padding) =>
      Container(margin: EdgeInsets.all(padding), child: this);

  Widget positionWidget(
          {double left = 0,
          double top = 0,
          double right = 0,
          double bottom = 0}) =>
      Positioned(
          left: left, top: top, right: right, bottom: bottom, child: this);

  Widget safeWidget() => SafeArea(bottom: false, child: this);

  Widget onClickWidget(Function() action) =>
      GestureDetector(onTap: action, child: this);

  Widget centerWidget() => Center(child: this);

  Widget alignWidget(Alignment alignment) =>
      Align(alignment: alignment, child: this);

  Widget visibilityWidget(bool isVisible) =>
      Visibility(visible: isVisible, child: this);

  Widget inkWellWidget(Function() action) => InkWell(
        splashColor: Colors.white,
        highlightColor: Colors.white,
        onTap: action,
        child: this,
      );

  Widget inkLongWellWidget(Function() action) => InkWell(
    onLongPress: action,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    child: this,
  );

  Widget expandedWidget() => Expanded(child: this);

  Widget popWidget(Function() action) => WillPopScope(
      onWillPop: () async {
        action();
        return false;
      },
      child: this);
}

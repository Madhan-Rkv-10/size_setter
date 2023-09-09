library sizers;

import 'dart:developer';

import 'package:flutter/material.dart';

import './helpers/dimens.dart';

part './helpers/extensions.dart';
part './helpers/widgets/height_sized_box.dart';
part './helpers/widgets/width_sized_box.dart';

abstract class SizerUtils {
  static void setSourceDeviceSize({
    required BuildContext context,
    double sourceWidth = 430,
    double sourceHeight = 932,
  }) {
    Utils.setSizers(
        context: context, setupWidth: sourceWidth, setupHeight: sourceHeight);
  }
}

class Sizers extends StatelessWidget {
  const Sizers({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      SizerUtils.setSourceDeviceSize(context: context);
      return child;
    }));
  }
}

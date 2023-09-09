library adaptive_sizer;

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:sizers/helpers/dimens.dart';

part './helpers/extensions.dart';
part './helpers/widgets/height_sized_box.dart';
part './helpers/widgets/width_sized_box.dart';

abstract class AdaptiveSizers {
  static void setSourceDeviceSize({
    required BuildContext context,
    double sourceWidth = 430,
    double sourceHeight = 932,
  }) {
    Utils.setSizers(
        context: context, setupWidth: sourceWidth, setupHeight: sourceHeight);
  }
}

class ApativeSizer extends StatelessWidget {
  const ApativeSizer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      AdaptiveSizers.setSourceDeviceSize(context: context);
      return child;
    }));
  }
}

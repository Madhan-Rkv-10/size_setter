// ignore_for_file: public_member_api_docs, sort_constructors_first
library sizers;

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:sizers/helpers/dimens.dart';

part './helpers/extensions.dart';
part './helpers/widgets/height_sized_box.dart';
part './helpers/widgets/width_sized_box.dart';

abstract class AdaptiveSizers {
  // static void init() {
  //   var d = Sam();
  // }

  // late double? sourceWidth;
  static void setSourceDeviceSize({
    required BuildContext context,
    double sourceWidth = 430,
    double sourceHeight = 932,
  }) {
    log(context.toString());
    log(context.screenWidth.toString());
    log(sourceWidth.toString());
    // log(sourceHeight.toString());
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

class Sam extends StatelessWidget {
  const Sam({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

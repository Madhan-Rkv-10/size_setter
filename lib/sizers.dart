library sizers;

import 'package:flutter/material.dart';
import 'package:sizers/helpers/dimens.dart';

part './helpers/extensions.dart';
part './helpers/widgets/height_sized_box.dart';
part './helpers/widgets/width_sized_box.dart';

abstract class Sizers {
  static setSizers({
    required BuildContext context,
    double? setupWidth,
    double? setupHeight,
  }) {
    Utils.setSizers(
        context: context, setupWidth: setupWidth, setupHeight: setupHeight);
  }
}

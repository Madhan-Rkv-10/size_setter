part of sizers;

extension ContextUtils on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}

extension ResponsiveSize on num {
  double get h => Utils.getScreenHeight(Utils.ctx!, this);
  double get w => Utils.getScreenWidth(Utils.ctx!, this);
  double get z => Utils.getEvenSize(Utils.ctx!, this);

  double get ph {
    log((this < 1 || this > 100).toString());
    assert(
      this > 1 && this <= 100,
      'The value must be between 1 to 100',
    );

    return (((Utils.ctx!.screenHeight)) * this / 100);
  }

  double get pw => ((Utils.ctx!.screenWidth)) * this / 100;
  double get px => Utils.getpixelFontSize(Utils.ctx!, this);
  double get sp => Utils.getspFontSize(Utils.ctx!, this);
}

extension SizeBoxExtension on num {
  Widget get widthBox => SizedBox(width: double.parse(toString()));

  Widget get heightBox => SizedBox(height: double.parse(toString()));
}

extension DynamicSizeBoxExtension on num {
  Widget get pWidthBox => WidthSpaceBox(size: this);

  Widget get pHeightBox => HeightSpaceBox(size: this);
}

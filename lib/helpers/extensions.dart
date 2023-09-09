part of adaptive_sizer;

extension ContextUtils on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}

extension ResponsiveSize on num {
  double get h => Utils.getScreenHeight(Utils.ctx!, this);
  double get w => Utils.getScreenWidth(Utils.ctx!, this);

  double get ph {
    log((this < 1 || this > 100).toString());
    assert(
      this > 1 && this <= 100,
      'The value must be between 1 to 100',
    );

    return (((Utils.ctx!.screenHeight)) * this / 100);
  }

  double get pw {
    assert(
      this > 0 && this <= 100,
      'The value must be between 1 to 100',
    );

    return ((Utils.ctx!.screenWidth)) * this / 100;
  }

  double get px => Utils.getpixelFontSize(Utils.ctx!, this);
  double get sp => Utils.getspFontSize(Utils.ctx!, this);
}

extension DynamicSizeBoxExtension on num {
  Widget get widthBox => WidthSpaceBox(size: this);

  Widget get heightBox => HeightSpaceBox(size: this);
}

extension PercentageSizeBoxExtension on num {
  Widget get pWidthBox =>
      SizedBox(width: Utils.ctx!.screenWidth * (this) / 100);

  Widget get pHeightBox =>
      SizedBox(height: Utils.ctx!.screenHeight * (this) / 100);
}

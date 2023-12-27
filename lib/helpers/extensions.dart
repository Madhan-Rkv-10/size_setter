part of '../size_setter.dart';

extension ContextUtils on BuildContext {
  /// It returns screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  /// It returns screen width

  double get screenWidth => MediaQuery.of(this).size.width;
}

extension ResponsiveSize on num {
  /// It coverts pixels to resposive height
  double get h => Utils.getScreenHeight(Utils.ctx!, this);

  /// It coverts pixels to resposive width

  double get w => Utils.getScreenWidth(Utils.ctx!, this);

  /// It coverts pixels to percentage height

  double get ph {
    log((this < 1 || this > 100).toString());
    assert(
      this > 1 && this <= 100,
      'The value must be between 1 to 100',
    );

    return (((Utils.ctx!.screenHeight)) * this / 100);
  }

  /// It coverts pixels to percentage width

  double get pw {
    assert(
      this > 0 && this <= 100,
      'The value must be between 1 to 100',
    );

    return ((Utils.ctx!.screenWidth)) * this / 100;
  }

  /// It returns responsive fot size in pixels

  double get px => Utils.getpixelFontSize(Utils.ctx!, this);

  /// It returns responsive fot size in scalar independent pixels

  double get sp => Utils.getSpFontSize(Utils.ctx!, this);
}

extension DynamicSizeBoxExtension on num {
  /// It returns responsive Gap based on respective width value

  Widget get widthBox => WidthSpaceBox(size: this);

  /// It returns responsive Gap based on respective height value

  Widget get heightBox => HeightSpaceBox(size: this);
}

extension PercentageSizeBoxExtension on num {
  /// It returns percentage Gap based on respective width value

  Widget get pWidthBox {
    assert(
      this > 0 && this <= 100,
      'The value must be between 1 to 100',
    );
    return SizedBox(width: Utils.ctx!.screenWidth * (this) / 100);
  }

  /// It returns percentage Gap based on respective height value

  Widget get pHeightBox {
    assert(
      this > 0 && this <= 100,
      'The value must be between 1 to 100',
    );
    return SizedBox(height: Utils.ctx!.screenHeight * (this) / 100);
  }
}

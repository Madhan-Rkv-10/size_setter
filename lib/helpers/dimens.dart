// import 'dart:developer';

part of size_setter;

abstract class Utils {
  static BuildContext? ctx;
  static double? width;
  static double? height;
  static void setSizers({
    required BuildContext context,
    required double setupWidth,
    required double setupHeight,
  }) {
    ctx = context;
    width = setupWidth;
    height = setupHeight;
  }

  static double getScreenWidth(BuildContext context, num y) {
    log("Source Device   width $width and Height $height");

    return context.screenWidth * (y / width!);
  }

  static double getEvenSize(
    BuildContext? context,
    num z,
  ) {
    return (context!.screenWidth * context.screenHeight) *
        (z / (width! * height!));
  }

  static double getScreenHeight(BuildContext context, num y) {
    log("setup height $height");
    return context.screenHeight * (y / height!);
  }

  static double getpixelFontSize(
    BuildContext context,
    num referenceFontSize,
  ) {
    // Calculate scaling factors for width and height
    double widthScaleFactor = context.screenWidth / width!;
    double heightScaleFactor = context.screenHeight / height!;

    // Choose the smaller scaling factor to ensure the text fits within both dimensions
    double scaleFactor = widthScaleFactor < heightScaleFactor
        ? widthScaleFactor
        : heightScaleFactor;

    // Calculate the dynamic font size
    double dynamicFontSize = referenceFontSize * scaleFactor;

    return dynamicFontSize;
  }

  static double getspFontSize(
    BuildContext context,
    num referenceFontSize,
  ) {
    // Get the textScaleFactor from the MediaQuery to consider the user's font size setting
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    // Calculate scaling factors for width and height
    double widthScaleFactor = context.screenWidth / width!;
    double heightScaleFactor = context.screenHeight / width!;

    // Choose the smaller scaling factor to ensure the text fits within both dimensions
    double scaleFactor = widthScaleFactor < heightScaleFactor
        ? widthScaleFactor
        : heightScaleFactor;

    // Calculate the dynamic font size in scaled pixels (sp)
    double dynamicFontSize = referenceFontSize * scaleFactor * textScaleFactor;

    return dynamicFontSize;
  }
}

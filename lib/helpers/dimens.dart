// import 'dart:developer';

part of '../size_setter.dart';

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
    // log("Source Device   width $width and Height $height");

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
    // log("setup height $height");
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

  static double getSpFontSize(
    BuildContext context,
    num referenceFontSize,
  ) {
    // Access the TextScaler for the current context
    final TextScaler scaler = MediaQuery.textScalerOf(context);

    // Calculate scaling factors for width and height (unchanged)
    double widthScaleFactor = context.screenWidth / width!;
    double heightScaleFactor = context.screenHeight / width!;

    // Choose the smaller scaling factor (unchanged)
    double scaleFactor = widthScaleFactor < heightScaleFactor
        ? widthScaleFactor
        : heightScaleFactor;

    // Calculate the dynamic font size using TextScaler
    double dynamicFontSize = scaler.scale(referenceFontSize * scaleFactor);

    return dynamicFontSize;
  }
}

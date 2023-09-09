# Sizers

Unlocking design adaptability, the sizers package for Flutter elegantly recalibrates pixels into responsive percentages, revolutionizing cross-device aesthetics with minimal effort. To learn more about this, please visit the following article [sizers](https://medium.com/p/b2c5a69e337/edit)

## Why Behind Using the sizers Package
 <ul>
 <li style="font-family:bold "> It converts pixel sizes to percentages, utilizing the source device width as a reference</li>
  <li style="font-family:bold "> The result is layouts that seamlessly adapt to various devices.</li>
  <li style="font-family:bold "> Based on the device, convert your numerical numbers to percentages. </li>
  <li style="font-family:bold "> Calculate your screen status bar sizes based on devices in a simple manner.
 </li>
 </ul>
 
# Installation ⬇️
Add to pubspec.yaml.
```dart
dependencies:
  ...
  sizers: ^0.0.1
```

# Parameters 
* `.h` - It Converts pixels into dynamic percentage based on source device height
* `.w` - It Converts pixels into dynamic percentage based on source device width
* `.ph` - Returns a percentage  value of screen height
* `.pw` - Returns a percentage  value of screen width
* `.px` - Returns a calculated pixel based on the device for fonts
* `.sp` - Returns a calculated sp based on the device for fonts
*  `.heightBox` - Returns a calculated SizedBox with height
*  `.widthBox` - Returns a calculated SizedBox with width
*  `.pWidthBox` - Returns a calculated SizedBox with percentage of screenSize Width
*  `.pWeightBox` - Returns a calculated SizedBox with percentage of screenSize Height

# Usage 💻

## Add the following import to your Dart code: 
```dart
import 'package:sizers/sizers.dart';
```


## Wrap MaterialApp with Sizers widget
```dart
Sizers(
      child:MaterialApp(),     
 )
```
### If you're developing your application using designs created in tools like Figma,Convert  your pixels into percenage based on  source device size, 
##### The default source device  is iphone14 pro max , device width is 430 px and height 932 px. 

##### If your source device is different add size in Sizers


```dart
Sizers(
    sourcewidth:430,
    sourceheight:840,
      child:MaterialApp(),   
 )
 ```
## If you prefer not to wrap your MaterialApp in Sizers, you can follow these instructions.
Convert Your MaterialApp to StateFul Widget
Add following code
```dart
 @override
  void didChangeDependencies() {
    SizerUtils.setSourceDeviceSize(
        context: context,);

    super.didChangeDependencies();
  }

```
  #### If You want to setup your souce device size
```dart
 @override
  void didChangeDependencies() {
    SizerUtils.setSourceDeviceSize(
        context: context,sourceWidth: 300,  sourceHeight: 700);

    super.didChangeDependencies();
  }

```
## Widget Size 🕓
```dart
    Container(
      width: 20.w,    //It will take a 20% of screen width
      height:30.h     //It will take a 30% of screen height
    )
```
## what if you have pixels and how to calculate percentage 
```dart
SizedBox(
      width: 200.pw,    //It will convert pixels into adaptive percentage based on source device width
      height:30.ph     //It will convert pixels into adaptive percentage based on source device width
    )
```
## Font size 
<li> <Strong>sp</Strong> stands for "scale-independent pixels". It is a relative unit that is independent of the screen's physical pixel density. This means that an sp value will be rendered at the same size on all screens, regardless of their pixel density.
<li><Strong>px</Strong> stands for "pixels". It is an absolute unit that refers to the actual number of pixels on the screen. This means that a px value will be rendered at a different size on screens with different pixel densities

```dart
    Text(
      'Hello World',style: TextStyle(fontSize: 15.sp),
    );
    //or
Text(
      'Hello World',style: TextStyle(fontSize: 15.px),
    );

```
## Issue and feedback 💭 

If you have any suggestion for including a feature or if something doesn't work, feel free to open a Github [issue](https://github.com/Madhan-Rkv-10/sizers/issues) for us to have a discussion on it.




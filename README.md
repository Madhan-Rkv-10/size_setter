# Adaptive Sizer

<!-- <p align="center" >
  <strong>Sizer is helps you to create responsive UI easily.</strong>
  <br />
  <br />
  <a href="https://www.buymeacoffee.com/fluttersizer" target="_blank"><img width="180px" src="https://raw.githubusercontent.com/TechnoUrmish/Sizer/master/example/images/iv_buy_me_a_coffee.png" style="height: 51px !important;width: 217px !important;" ></a>
</p>

<br /> -->

Unlocking design adaptability, the adaptive_sizer package for Flutter elegantly recalibrates pixels into responsive percentages, revolutionizing cross-device aesthetics with minimal effort.
<!-- 
![Alt Text](https://github.com/TechnoUrmish/Sizer/blob/master/example/images/img_ss_with_lib.png)

![Alt Text](https://github.com/TechnoUrmish/Sizer/blob/master/example/images/img_ss_without_lib.png) -->

# Content
- [Description](#description)
- [Installation](#installation)
- [Parameters](#parameters)
- [Suggestion]( #suggestion)
- [Note](#note)

<!-- # Existing User
## Hello Existing users, I have updated the package for supporting Flutter 2.0 and solving many bugs then Whenever you update 1.x.x to 2.x.x will be got many errors so please update the package with the new below code.  -->
# Description
## Why Behind Using the adaptive_sizer Package
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
  adaptive_sizer: ^0.0.1
```

# Parameters 
* `.ph` - It Converts pixels into dynamic percentage based on source device height
* `.pw` - It Converts pixels into dynamic percentage based on source device width
* `.h` - Returns a calculated height based on the device
* `.w` - Returns a calculated width based on the device
* `.px` - Returns a calculated pixel based on the device
* `.sp` - Returns a calculated sp based on the device
*  `topPadding`- Returns a system status bar size
*  `bottomPadding`-  Returns system intrusions on the bottom side of the screen

# Usage 💻

## Add the following import to your Dart code: 
```dart
import 'package:adaptive_sizer/adaptive_sizer.dart';
```


## Wrap MaterialApp with AdaptiveSizer widget
```dart
AdaptiveSizer(
      child:MaterialApp(),     
 )
```
### If you're developing your application using designs created in tools like Figma,Convert  your pixels into percenage based on  source device size, 
##### The default source device  is iphone14 pro max , device width is 430 px and height 932 px. 

##### If your source device is different add size in AdaptiveSizerWidget


```dart
AdaptiveSizer(
    sourcewidth:430,
    sourceheight:840,
      child:MaterialApp(),   
 )
 ```
## If you prefer not to wrap your MaterialApp in AdaptiveSizer, you can follow these instructions.
Convert Your MaterialApp to StateFul Widget
Add following code
<!-- and give setup device width and height <Strong>(Optional)<Strong> -->
```dart
 @override
  void didChangeDependencies() {
    AdaptiveSizers.setSourceDeviceSize(
        context: context,);

    super.didChangeDependencies();
  }

```
  #### If You want to setup your souce device size
```dart
 @override
  void didChangeDependencies() {
    AdaptiveSizers.setSourceDeviceSize(
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

<!-- # Note

You need to import `sizer` package in order to access `number.h`, `number.w`, and `number.sp`

**Auto import in VSCode and Android Studio doesn't work for dart extension methods.** Typing `10.h` would not bring up auto import suggestion for this package

One workaround is to type `Device` so that the auto import suggestion would show up:
```dart
import 'package:adaptive_sizer/adaptive_sizer.dart';
``` -->

## Issue and feedback 💭 

If you have any suggestion for including a feature or if something doesn't work, feel free to open a Github [issue](https://github.com/Madhan-Rkv-10/adaptive_sizer/issues) for us to have a discussion on it.




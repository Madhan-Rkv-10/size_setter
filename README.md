# Size Setter

Unlocking design adaptability, the size_setter package for Flutter elegantly recalibrates pixels into responsive percentages, revolutionizing cross-device aesthetics with minimal effort. To learn more about this, please visit the following article [size_setter](https://medium.com/@madhanrkv10/new-package-for-your-responsive-flutter-app-development-b2c5a69e337)

## Benefits 
 <ul>
 <li style="font-family:bold "> It converts pixel sizes to percentages, utilizing the source device size as a reference</li>
  <li style="font-family:bold "> The result is layouts that seamlessly adapt to various devices.</li>
  <li style="font-family:bold "> Based on the device, convert your numerical numbers to percentages. </li>
  <li style="font-family:bold "> A streamlined solution for the Space between the widgets.
 </li>
 </ul>
 
# Installation ⬇️
Add to pubspec.yaml.
```dart
dependencies:
  ...
  size_setter: ^1.0.2
```

# Parameters ⚙️
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
import 'package:size_setter/size_setter.dart';
```


## Wrap MaterialApp with SizeSetter widget
```dart
SizeSetter(
      child:MaterialApp(),     
 )
```
### If you're developing your application using designs created in tools like Figma,Convert  your pixels into percenage based on  source device size, 
##### The default source device  is iphone14 pro max , device width is 430 px and height 932 px. 

##### If your source device is different add size in size_setter


```dart
SizeSetter(
    sourcewidth:430,
    sourceheight:840,
      child:MaterialApp(),   
 )
 ```
## If you prefer not to wrap your MaterialApp in SizeSetter, you can follow these instructions.
Convert Your MaterialApp to Stateful Widget
Add following code
```dart
 @override
  void didChangeDependencies() {
   SizeSetterUtils.setSourceDeviceSize(
        context: context,);

    super.didChangeDependencies();
  }

```
  #### If you wish to configure the dimensions of your source device.
```dart
 @override
  void didChangeDependencies() {
    SizeSetterUtils.setSourceDeviceSize(
        context: context,sourceWidth: 300,  sourceHeight: 700);

    super.didChangeDependencies();
  }

```
## Widget Size 🕓
```dart
    Container(
      width: 20.pw,    //It will take a 20% of screen width
      height:30.ph     //It will take a 30% of screen height
    )
```
## Covert your pixels into resposive size without MediaQueries 


```dart
SizedBox(
      width: 200.w,    //It will convert pixels into responsive percentage based on source device width
      height:300.h     //It will convert pixels into responsive percentage based on source device width
    )
```
## Gap between the widgets
 - `.pWidthBox` - it returns a gap with a percentage of the screen width size
```dart
    //Before
    SizedBox(
    width:MediaQuery.of(context).size.screenWidth*0.7
    )
    //After
    70.pWidthBox 
```
 - `.pHeigthBox` - it returns a gap with a percentage of the screen width size
```dart
    //Before
    SizedBox(
    width:MediaQuery.of(context).size.screenHeight*0.7
    )
    //After
    70.pHeightBox
   ``` 
  `.heightBox` - it returns a gap with a dynamic size height, mainly used to make it responsive.
  ```dart
      //Before
    SizedBox(
    height:200.h
    )
    //After
    200.heightBox
```   
`.widthBox` - it returns a gap with a dynamic size width, mainly used to make it responsive.
```dart
    //Before
    SizedBox(
    width:200.w
    )
    //After
    200.widthBox
```
## Font size ✍️
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

If you have any suggestion for including a feature or if something doesn't work, feel free to open a Github [issue](https://github.com/Madhan-Rkv-10/size_setter/issues) for us to have a discussion on it.




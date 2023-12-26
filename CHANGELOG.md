# Release Notes
## 1.0.9
       Updated flutter_lints
## 1.0.8
       Updated API reference 
## 1.0.7
       Updated API reference 
## 1.0.6
       Added API reference 
## 1.0.5
       Added Exceptions 
## 1.0.4
       Updated CHANGELOG.md
## 1.0.3
       Added Article
## 1.0.2
       Added Description

## 1.0.1
       Updated README.md
## 1.0.0
  Added Height  and Width SizedBox extensions for gap with responsive size 


```dart
            SizedBox(
            width:200.w
            )
            //or
            200.widthBox

            // for responsive SizedBox with Height
            SizedBox(
            height:200.h
            )
            //or
            200.heightBox
```
 ## 0.1.1
 Added Font Extensions

```dart
Text(
            'Hello World',style: TextStyle(fontSize: 15.sp),
            );
            //or
            Text(
            'Hello World',style: TextStyle(fontSize: 15.px),
            );
```

 ## 0.1.0
<li> Added extensions for responsive  width and height based o Source Device <br>
<li> <b>Breaking Change :<b> Now you can initialize in StatefulWidget</li>

```dart
   @override
  void didChangeDependencies() {
   SizeSetterUtils.setSourceDeviceSize(
        context: context,);

    super.didChangeDependencies();
  }
  ```

## 0.0.5
 Updated package Initilization in Stateless Widget
 ## 0.0.4
 Added Width and Height Extensions

 ## 0.0.3
 Created Class and Utils 
## 0.0.2
 Updated README
## 0.0.1
 Initial Release

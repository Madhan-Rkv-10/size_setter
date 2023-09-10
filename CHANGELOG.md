# Release Notes
## 1.0.1
       Updated README.md
## 1.0.0
  Added Height  and Width SizedBox extensions for gap with responsive size
        ```
        dart
            //Before
            SizedBox(
            width:200.w
            )
            //After
            200.widthBox
        ```
 ## 0.1.1
 Added Font Extensions
    ```
        dart
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
     ```
      dart
       @override
       void didChangeDependencies() {
        AdaptiveSizers.setSourceDeviceSize(
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

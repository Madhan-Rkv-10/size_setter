import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sizers/helpers/dimens.dart';
import 'package:sizers/sizers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // log("calling");
    // Sizers.setSizers(context: context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // builder: (context, child) {
      //   // log("x");
      //   // Sizers.setSizers(context: context);
      //   return SizedBox();
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    AdaptiveSizers.setSourceDeviceSize(
        context: context, sourceWidth: 430, sourceHeight: 932);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400;
    double defaultScreenHeight = 932;

    double screenWidth = 500;
    double screenHeight = 700;

    double boxWidth = 50;
    double boxHeight = 50;

    double boxWidthPercentage = (boxWidth / defaultScreenWidth) * 100;
    double boxHeightPercentage = (boxHeight / defaultScreenHeight) * 100;
    log('${screenWidth * (boxWidthPercentage / 100)}');
    log('${screenHeight * (boxHeightPercentage / 100)}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.red,
        height: 70.h,
        width: 70.w,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

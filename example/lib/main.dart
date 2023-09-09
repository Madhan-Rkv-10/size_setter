import 'package:flutter/material.dart';
import 'package:size_setter/size_setter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void didChangeDependencies() {
    SetSizerUtils.setSourceDeviceSize(
        context: context, sourceWidth: 430, sourceHeight: 932);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Adaptive Sizer'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 20.ph,
            width: 100.ph,
            alignment: Alignment.center,
            child: const Text("2O% percent height and 100 % width"),
          ),

          /// Gap 20 pixels resposive
          20.heightBox,
          Container(
            color: Colors.blue,
            height: 200.h,
            width: 200.w,
            alignment: Alignment.center,
            child: const Text("200 px with responsive size"),
          ),
        ],
      ),
    );
  }
}

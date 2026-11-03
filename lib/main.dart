
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rectHeight = 80;

  Widget drawRect({
    required double height,
    Color rectColor = Colors.red,
    double paddingHz = 40,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHz,
        vertical: 5,
      ),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: rectColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.orange,
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: const Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              drawRect(
                height: 60,
                rectColor: Colors.red,
                paddingHz: 40,
              ),
              drawRect(
                height: 60,
                rectColor: Colors.green,
                paddingHz: 60,
              ),
              drawRect(
                height: 60,
                rectColor: Colors.blue,
                paddingHz: 80,
              ),
              drawRect(
                height: 60,
                rectColor: Colors.orange,
                paddingHz: 100,
              ),
              drawRect(
                height: 60,
                rectColor: Colors.purple,
                paddingHz: 120,
              ),
              drawRect(
                height: 60,
                rectColor: Colors.yellow,
                paddingHz: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

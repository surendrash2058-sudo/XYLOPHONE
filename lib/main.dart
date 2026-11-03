import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final AudioPlayer player = AudioPlayer();  
  double rectHeight = 60;

  Future<void> playSound(int note) async{
   await player.stop();
   await player.play(AssetSource('note$note.wav'));
  }

  Widget drawRect(double height, Color rectColor, double paddingHz, int note) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHz, vertical: 10),
      child: TextButton(
        onPressed: ()async{
          playSound(note);
        },
        child: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: rectColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.orange,
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text(
            'Xylophone',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight(1000),
            ),
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              drawRect(rectHeight, Colors.red, 30, 1),
              drawRect(rectHeight, Colors.green, 50, 2),
              drawRect(rectHeight, Colors.blue, 70, 3),
              drawRect(rectHeight, Colors.orange, 90, 4),
              drawRect(rectHeight, Colors.purple, 110, 5),
              drawRect(rectHeight, Colors.yellow, 130, 6),
              drawRect(rectHeight, Colors.pink, 150, 7),
            ],
          ),
        ),
      ),
    );
  }
}

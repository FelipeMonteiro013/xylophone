import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget BuildKey({color, soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          PlaySound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, soundNumber: 1),
              BuildKey(color: Colors.orange, soundNumber: 2),
              BuildKey(color: Colors.yellow, soundNumber: 3),
              BuildKey(color: Colors.green, soundNumber: 4),
              BuildKey(color: Colors.teal, soundNumber: 5),
              BuildKey(color: Colors.blue, soundNumber: 6),
              BuildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

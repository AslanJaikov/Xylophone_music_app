import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildkey({Color? buttonColor, int? soundNumber}) {
    return Expanded(
      child: Container(
        child: TextButton(
          child: Center(),
          onPressed: () {
            playSound(soundNumber!);
          },
        ),
        color: buttonColor,
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
              buildkey(buttonColor: Colors.red, soundNumber: 1),
              buildkey(buttonColor: Colors.orange, soundNumber: 2),
              buildkey(buttonColor: Colors.yellowAccent, soundNumber: 3),
              buildkey(buttonColor: Colors.green, soundNumber: 4),
              buildkey(buttonColor: Colors.teal, soundNumber: 5),
              buildkey(buttonColor: Colors.blue, soundNumber: 6),
              buildkey(buttonColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int songNumber) {
    final player = AudioCache();
    player.play('note$songNumber.wav');
  }

  buildKey({required Color color, required int songNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(songNumber),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Container(),
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
            children: [
              buildKey(color: Colors.red, songNumber: 1),
              buildKey(color: Colors.orange, songNumber: 2),
              buildKey(color: Colors.yellow, songNumber: 3),
              buildKey(color: Colors.green, songNumber: 4),
              buildKey(color: Colors.cyan, songNumber: 5),
              buildKey(color: Colors.blue.shade700, songNumber: 6),
              buildKey(color: Colors.deepPurple, songNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter076/widgets/buttons.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playSound(int number) {
    AudioPlayer().play(
      AssetSource("assets_note$number.wav"),
    );
  }

  Expanded buildKey(String audioPath, Color buttonColor) {
    return Expanded(
      child: SoundButton(
          audioPath: audioPath,
          buttoncColor: buttonColor,
          onTap: () => print("music")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey("assets_note1.wav", Colors.red),
                buildKey("assets_note2.wav", Colors.black),
                buildKey("assets_note3.wav", Colors.yellow),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

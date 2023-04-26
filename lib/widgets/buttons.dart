import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundButton extends StatelessWidget {
  final String audioPath;
  final Color buttoncColor;
  final Function onTap;

  const SoundButton(
      {required this.audioPath,
      required this.buttoncColor,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
           child: TextButton(
            child: Container(
              child: Text(""),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(buttoncColor)),
            onPressed: () {
              AudioPlayer().play(
                AssetSource(audioPath),
              );
            }),
      ),
    );
  }
}

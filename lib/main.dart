import 'package:flutter/material.dart';
import "package:audioplayers/audioplayers.dart";

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Drum Audio',
          ),
          backgroundColor: Colors.orange[300],
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioCache();

  void playAudio(String audio) {
    player.play('audio/$audio.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('bip', Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('bongo', Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap1', Colors.grey),
                  ),
                  Expanded(
                    child: buildDrumPad('clap2', Colors.orangeAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap3', Colors.yellowAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('how', Colors.brown),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('crash', Colors.purpleAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('ridebel', Colors.greenAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildDrumPad(String audio, Color color) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
      onPressed: () {
        playAudio(audio);
      },
      child: Container(
        color: color,
      ),
    );
  }
}

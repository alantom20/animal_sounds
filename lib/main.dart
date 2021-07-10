import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(AnimalSounds());
}

class AnimalSounds extends StatelessWidget {
  const AnimalSounds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow.shade300,
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade600,
          title: Center(
            child: Text(
              '動物的聲音',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            buildKey(Colors.red, 'cat', 'sounds/cat.wav'),
            buildKey(Colors.orange, 'dog', 'sounds/dog.wav'),
            buildKey(Colors.yellow, 'elephant', 'sounds/elephant.wav'),
            buildKey(Colors.green, 'lion', 'sounds/lion.flac'),
            buildKey(Colors.blue, 'monkey', 'sounds/monkey.wav'),
            buildKey(Colors.teal, 'owl', 'sounds/owl.wav'),
            buildKey(Colors.red, 'sheep', 'sounds/sheep.flac'),
            buildKey(Colors.purple, 'whale', 'sounds/whale.wav'),
            buildKey(Colors.brown, 'wolf', 'sounds/wolf.wav'),
            buildKey(Colors.indigo, 'frog', 'sounds/frog.wav'),
            buildKey(Colors.white, 'horse', 'sounds/horse.flac'),
            buildKey(Colors.red, 'cow', 'sounds/cow.wav'),
            buildKey(Colors.orange, 'duck', 'sounds/duck.wav'),
            buildKey(Colors.yellow, 'bee', 'sounds/bee.mp3'),
            buildKey(Colors.green, 'penguin', 'sounds/penguin.wav'),
            buildKey(Colors.blue, 'dolphin', 'sounds/dolphins.wav'),
            buildKey(Colors.teal, 'pig', 'sounds/pig.wav'),
            buildKey(Colors.white, 'squirrel', 'sounds/Squirrel.wav'),
            buildKey(Colors.brown, 'parrot', 'sounds/parrot.wav'),
          ],
        ),
      ),
    );
  }

  Container buildKey(Color color, String animal, String sound) {
    return Container(
      child: Column(
        children: [
          Text(
            animal,
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: color),
            onPressed: () {
              playSound(sound);
            },
            child: Image.asset('assets/images/$animal.png'),
          ),
        ],
      ),
    );
  }

  void playSound(String sound) {
    final player = AudioCache();
    player.play(sound);
  }
}

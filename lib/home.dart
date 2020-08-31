import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

AudioPlayer myPlayer = new AudioPlayer();
var mymusic = new AudioCache(fixedPlayer: myPlayer);

playsongs() async {
  mymusic.clearCache();
  await mymusic.play('audio1.mp3');
}

pause() {
  myPlayer.pause();
}

stop() {
  myPlayer.stop();
}

body() {
  var MyBody = Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        width: 200,
        height: 200,
        child: Card(
          color: Colors.red,
          child: Image.asset('images/img1.gif'),
          elevation: 10,
        ),
      ),
      Container(
        width: 100,
        height: 50,
        child: OutlineButton(
          onPressed: playsongs,
          child: Icon(Icons.play_arrow),
        ),
      ),
      Container(
        width: 100,
        height: 50,
        child: OutlineButton(
          onPressed: pause,
          child: Icon(Icons.pause),
        ),
      ),
      Container(
        width: 100,
        height: 50,
        child: OutlineButton(
          onPressed: stop,
          child: Icon(Icons.stop),
        ),
      ),
    ],
  );
  return MyBody;
}

myApp1() {
  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('Music Player'),
    ),
    body: body(),
  );
  return MaterialApp(
    home: myhome,
  );
}

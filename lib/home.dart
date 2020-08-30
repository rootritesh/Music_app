import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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
    // mainAxisAlignment: MainAxisAlignment.center,
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
        child: RaisedButton(
          onPressed: () {
            Text('Play');
            playsongs();
          },
        ),
      )
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

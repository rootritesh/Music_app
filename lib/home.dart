import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

AudioPlayer myPlayer = AudioPlayer();
var mymusic = AudioCache(fixedPlayer: myPlayer);

playsongs() async {
  // mymusic.clearCache();
  await mymusic.play('audio1.mp3');
}

pause() {
  myPlayer.pause();
}

stop() {
  myPlayer.stop();
}

demo() {
  print("hello");
}

body() {
  var MyBody = Column(
    // mainAxisAlignment: MainAxisAlignment.spaceAround,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 28),
        // padding: EdgeInsets.all(20),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 7,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),

        // child: Image.asset('images/head.gif'),
        child: Card(
          color: Colors.black,
          child: Image.asset('images/head.png'),
          elevation: 10,
        ),
      ),
      Container(
        // width: 500,
        // height: 300,
        margin: EdgeInsets.only(top: 35, bottom: 45, left: 10, right: 10),
        child: Card(
          color: Colors.black,
          child: Image.asset('images/icon1.gif'),
          elevation: 10,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.white60,
            width: 100,
            height: 50,
            child: OutlineButton(
              onPressed: playsongs,
              child: Icon(Icons.play_arrow),
            ),
          ),
          Container(
            color: Colors.white60,
            width: 100,
            height: 50,
            child: OutlineButton(
              onPressed: pause,
              child: Icon(Icons.pause),
            ),
          ),
          Container(
            color: Colors.white60,
            width: 100,
            height: 50,
            child: OutlineButton(
              onPressed: stop,
              child: Icon(Icons.stop),
            ),
          ),
        ],
      ),
    ],
  );
  return MyBody;
}

myApp1() {
  var myhome = Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor: Colors.grey.shade600,
      title: Text('Music Player'),
    ),
    body: body(),
  );
  return MaterialApp(
    home: myhome,
  );
}

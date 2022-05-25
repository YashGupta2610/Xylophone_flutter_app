import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
        home: MyApp()),
  );
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
   @override
  var notename= ['C','D','E','F','G','A','B','C\''];
    void playsound(int n){
    final player= AudioCache();
    player.play('note$n.wav');
  }
  Expanded play(Color color, int num){
   return Expanded(
     flex: 1,
     child: FlatButton(
  color: color,
  onPressed: () => playsound(num),
    child: Text(notename[num-1]),
     ),
   );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            play( Colors.red, 1),
            play( Colors.orange, 2),
            play( Colors.yellow, 3),
            play( Colors.green, 4),
            play( Colors.teal, 5),
            play( Colors.blue, 6),
            play( Colors.deepPurpleAccent, 7),
            play( Colors.deepPurple, 8),
          ],
        ),
      )

    );
  }
}

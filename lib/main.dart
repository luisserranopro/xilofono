import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XilofonoApp());

class XilofonoApp extends StatelessWidget {
  void play_sound(int x) {
    AudioCache player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded Tecla(Color Color, int x, String nombre) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(1.0),
        child: FlatButton(
          color: Color,
          onPressed: () {
            play_sound(x);
          },

          child: Text(nombre),
        ),
      ),


    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Tecla(Colors.red, 1, "Do"),
                    Tecla(Colors.orange, 2, "Re"),
                    Tecla(Colors.yellow, 3, "Mi"),
                    Tecla(Colors.green, 4, "Fa"),
                    Tecla(Colors.teal, 5, "Sol"),
                    Tecla(Colors.blueAccent, 6, "La"),
                    Tecla(Colors.purple, 7, "Si"),
                  ],
                ),
              ],
              alignment: AlignmentDirectional.centerEnd,
            ),
          ),
        ),
      ),
    );
  }
}

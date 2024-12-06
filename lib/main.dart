import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Gerador de frases de música",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading:  Icon(
          Icons.music_note_rounded,
          color: Colors.white,
          size: 25,
        ),
        title: Text(
          "Frases de Músicas",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600
          ),
        ),
        backgroundColor: Colors.lightGreen[900]
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50)
              ),
              Image.asset(
                    "images/spotify.png",
                    fit: BoxFit.scaleDown,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 50)
              ),
              Text(
                  "Clique no botão para receber uma frase de música!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic
                  ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 25)
              ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen[600], // Background color
            ),
            onPressed: (){
              print("Frase Gerada.");
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Nova Música",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    )
                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 20, 5, 20)),
                Icon(
                  Icons.music_note_rounded,
                  color: Colors.white,
                  size: 25.0,
                ),
              ],
            )
          ),
            ],
          ),
        ),
      ),
    ),
  ));
}

import 'package:flutter/material.dart';
import 'package:iu_lyrics/pages/home/home.dart';

void main() => runApp(IULyricsApp());

class IULyricsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'TURALEE',
      theme: ThemeData(
        fontFamily: 'Metropolis',
        brightness: Brightness.dark,
      ),
      home: AlbumList(title: 'Turalee'),
    );
  }
}

import 'dart:convert';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:iu_lyrics/pages/album/list.dart';

class Album extends StatelessWidget {

  final String albumTitle;
  final int albumIndex;
  final String coverArt;

  Album({Key key, this.albumTitle, this.albumIndex, this.coverArt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        backgroundColorStart: Color(0xff1C12DB),
        backgroundColorEnd: Color(0xffD32B24),
        title: Text(albumTitle),
      ),
      body: Container(
        child: FutureBuilder(
          future: DefaultAssetBundle
            .of(context)
            .loadString('assets/iu.json'),
          builder: (context, snapshot) {
            var lyrics = json.decode(snapshot.data.toString());
            return LyricsList(lyrics: lyrics, albumIndex: albumIndex, coverArt: coverArt,);
          }
        ),
      ),
    );
  }
}

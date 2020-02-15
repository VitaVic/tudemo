import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Song extends StatelessWidget {
  final String songTitle;
  final List<dynamic> lyricsHan;
  final List<dynamic> lyricsRom;
  final List<dynamic> lyricsEng;

  Song({Key key, this.songTitle, this.lyricsHan, this.lyricsRom, this.lyricsEng})
      : super(key: key);

  Widget _buildLyrics(List<dynamic> lyrics) {
    return ListView.builder(
      itemCount: lyrics == null ? 0 : lyrics.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Color(0xffFFFFFF),
          child: InkWell(
            onTap: () {},
            child: Container(
              color: Color(0xffFFFFFF),
              child: ListTile(
                selected: true,
                title: Text(lyricsRom[index].toString(),
                style: TextStyle(
                    fontSize: 20,
                     height: 1.8,
                    fontWeight: FontWeight.w900,
                  color: Color(0xff1C12DB)
                ),
                ),
                subtitle: Text(lyrics[index].toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xffD32B24)
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: GradientAppBar(
          backgroundColorStart: Color(0xff1C12DB),
          backgroundColorEnd: Color(0xffD32B24),
          title: Text(songTitle),
          bottom: TabBar(
            tabs: [
              Tab(text: "ROM"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildLyrics(lyricsEng),
          ]
        ),
      )
    );
  }
}
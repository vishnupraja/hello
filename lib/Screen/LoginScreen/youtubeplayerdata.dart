import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerData extends StatefulWidget {
  final lessonId;

  const YouTubePlayerData({Key? key, required this.lessonId}) : super(key: key);

  @override
  State<YouTubePlayerData> createState() => _YouTubePlayerDataState();
}

class _YouTubePlayerDataState extends State<YouTubePlayerData> {
  late YoutubePlayerController _controller;
  late String videoId;

  print(videoId) {
    throw UnimplementedError();
  }

  @override
  void initState() {
    super.initState();
    Alignment.center;
    _controller = YoutubePlayerController(
      initialVideoId: '${widget.lessonId}',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 1
        elevation: 0,
        centerTitle: true,
        // title: Text("Welcom back!", textAlign: TextAlign.center),
      ),
      body: Center(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          builder: (context, player) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  player,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:e_learning/Api/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NormalVideoPage extends StatefulWidget {
  final quizid;

  NormalVideoPage({Key? key, required this.quizid}) : super(key: key);

  @override
  State<NormalVideoPage> createState() => _NormalVideoPagePageState();
}

class _NormalVideoPagePageState extends State<NormalVideoPage> {
  // get choices => null;
  late VideoPlayerController _controller;

  // video_url
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          // widget.quizid
          future: getSignleQuiz("1"),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
              );
            } else if (snapshot.hasError) {
              return Icon(Icons.error_outline);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

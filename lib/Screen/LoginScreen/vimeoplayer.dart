import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class VimeoPlayer extends StatefulWidget {
  var videoId;

   VimeoPlayer({Key? key, required this.videoId}) : super(key: key);

  @override
  State<VimeoPlayer> createState() => _VimeoPlayerState();
}

class _VimeoPlayerState extends State<VimeoPlayer> {
  // get videoId => null;
  String videoId = '70591644';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: Column(
          children: [
            Container(
              height: 250,
              child: VimeoPlayer(
                videoId: videoId,
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

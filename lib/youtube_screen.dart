import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatefulWidget {
   YoutubeScreen({Key? key}) : super(key: key);

  @override
  State<YoutubeScreen> createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  final videourl ="https://www.youtube.com/watch?v=BBAyRBTfsOU";

  late YoutubePlayerController _controller;
 @override
  void initState() {
    // TODO: implement initState
   final videoId = YoutubePlayer.convertUrlToId(videourl);
   _controller = YoutubePlayerController(
     initialVideoId: videoId!,
     flags: const YoutubePlayerFlags(
       autoPlay: true,
       mute: true,
     ),
   );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Container(child:

        YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        // videoProgressIndicatorColor: Colors.amber,
        // progressColors: ProgressColors(
        //   playedColor: Colors.amber,
        //   handleColor: Colors.amberAccent,
        // ),
        onReady: ()=> debugPrint("Ready"),
      ),)

    );
  }
}

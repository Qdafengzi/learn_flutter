import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoAndAudioWidgetPage extends StatefulWidget {
  const VideoAndAudioWidgetPage({super.key, required this.title});

  final String title;

  @override
  State<VideoAndAudioWidgetPage> createState() =>
      _VideoAndAudioWidgetPageState();
}

class _VideoAndAudioWidgetPageState extends State<VideoAndAudioWidgetPage> {

  late final player = Player();
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(player);
  // late final audoController = Controller

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    // Necessary initialization for package:media_kit.
    MediaKit.ensureInitialized();
    super.initState();
    // Play a [Media] or [Playlist].
    // player.open(Media('https://user-images.githubusercontent.com/28951144/229373695-22f88f13-d18f-4288-9bf1-c3e078d83722.mp4'));
    // player.open(Media('asset:///asset/input_phone.mp3'));
    player.open(Media('asset:///asset/video_1.mp4'));
  }
  
  

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Column(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 9.0 / 16.0,
          // Use [Video] widget to display video output.
          child: Video(controller: controller),
        ),

      ],),
    ) ;
  }
}

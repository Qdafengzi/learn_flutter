import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class LottieWidget extends StatefulWidget {
  const LottieWidget({super.key, required this.title});

  final String title;

  @override
  State<LottieWidget> createState() =>
      _LottieWidgetState();
}

class _LottieWidgetState extends State<LottieWidget> {

  

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: ListView(
        children: [
          // Load a Lottie file from your assets
          Lottie.asset('asset/ic_lottie.json'),
          // Load a Lottie file from a remote url
          Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
        ],
      ),
    ) ;
  }
}

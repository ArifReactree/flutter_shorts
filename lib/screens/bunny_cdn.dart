import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class BunnyCdn extends StatefulWidget {

  BunnyCdn({super.key});

  static final id="bunny-cdn";

  @override
  _BunnyCdnState createState() => _BunnyCdnState();
}

class _BunnyCdnState extends State<BunnyCdn> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  final List<String> videos = [
    "https://Asia-Singapore-1.b-cdn.net/shorts_1/shorts_1.m3u8"
  ];

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(videos[0]));

    await _videoPlayerController.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      aspectRatio: _videoPlayerController.value.aspectRatio,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bunny CDN HLS Player")),
      body: Center(
        child: _chewieController != null &&
            _chewieController!.videoPlayerController.value.isInitialized
            ? Chewie(controller: _chewieController!)
            : const CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }
}

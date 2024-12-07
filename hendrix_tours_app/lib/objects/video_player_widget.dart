import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  const VideoPlayerWidget({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    )
      ..initialize().then((_) {
        setState(() {}); // Rebuild when the video is ready
        _controller.play(); // Auto-play
        _controller.setLooping(true); // Enable looping
      }).catchError((error) {
        debugPrint('Error loading video: $error');
      });
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.videoUrl), // Unique key for the detector
      onVisibilityChanged: (visibilityInfo) {
        // Check if widget is visible
        if (visibilityInfo.visibleFraction == 0) {
          //_controller.pause(); // Pause the video when it's not visible
        } else if (!_controller.value.isPlaying) {
          _controller.play();
        }
      },
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

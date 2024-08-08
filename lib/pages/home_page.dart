import 'package:flutter/material.dart';
import 'package:galabungamatahari/pages/index.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = YoutubePlayerController(
    params: const YoutubePlayerParams(
      mute: false,
      showControls: false,
      showFullscreenButton: false,
      loop: true,
    ),
  );

  @override
  void initState() {
    super.initState();

    // _controller.loadVideo(Constants.pianoVideoUrl);
  }

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return DesktopHomePage(
        controller: _controller,
        screenType: DesktopScreenType.desktop,
      );
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      return DesktopHomePage(
        controller: _controller,
        screenType: DesktopScreenType.tablet,
      );
    } else {
      return MobileHomePage(controller: _controller);
    }
  }
}

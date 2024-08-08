import 'package:flutter/material.dart';
import 'package:galabungamatahari/gen/assets.gen.dart';
import 'package:galabungamatahari/utils/index.dart';
import 'package:gap/gap.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

enum DesktopScreenType {
  desktop,
  tablet;

  bool get isDesktop => this == DesktopScreenType.desktop;
  bool get isTablet => this == DesktopScreenType.tablet;

  int get textFlex => isDesktop ? 5 : 3;
  int get videoFlex => isDesktop ? 4 : 3;

  double get horizontalPadding => isDesktop ? 120 : 64;
}

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({
    super.key,
    required this.controller,
    required this.screenType,
  });

  final YoutubePlayerController controller;
  final DesktopScreenType screenType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundYellow,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              Assets.bungaMatahariBackgroundWide.path,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenType.horizontalPadding,
              vertical: 64,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    flex: screenType.textFlex,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apa Gala Bunga Matahari versi kamu?',
                          style: TypoStyle.h2(context).copyWith(
                            color: AppColors.darkBrown,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 16,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Saya ingin berbagi cerita'),
                        ),
                      ],
                    ),
                  ),
                  switch (screenType) {
                    DesktopScreenType.desktop => const Spacer(
                        flex: 1,
                      ),
                    DesktopScreenType.tablet => const Gap(16),
                  },
                  Expanded(
                    flex: screenType.videoFlex,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final width = constraints.maxWidth;
                        final height = width * (200 / 320);

                        return Container(
                          width: width,
                          height: height,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.highSaturationYellow,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: YoutubePlayer(
                              controller: controller,
                              aspectRatio: 4 / 3,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

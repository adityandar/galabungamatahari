import 'package:flutter/material.dart';
import 'package:galabungamatahari/gen/assets.gen.dart';
import 'package:galabungamatahari/utils/index.dart';
import 'package:gap/gap.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    super.key,
    required this.controller,
  });

  final YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundYellow,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              Assets.bungaMatahariBackground.path,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    final width = constraints.maxWidth;
                    final height = width * (9 / 16);

                    return Container(
                      width: width,
                      height: height,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.highSaturationYellow,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: YoutubePlayer(
                          controller: controller,
                          aspectRatio: 16 / 9,
                        ),
                      ),
                    );
                  },
                ),
                const Gap(32),
                Text(
                  'Apa Gala Bunga Matahari versi kamu?',
                  textAlign: TextAlign.center,
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
                const Gap(16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

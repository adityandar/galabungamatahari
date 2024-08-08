import 'package:flutter/material.dart';
import 'package:galabungamatahari/utils/app_colors.dart';
import 'package:galabungamatahari/utils/typo_style.dart';
import 'package:gap/gap.dart';

class FormView extends StatelessWidget {
  const FormView({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Halo semua, kenalin aku',
                style: TypoStyle.l1(context).copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryBrown,
                ),
              ),
              const Gap(8),
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.next,
                  style: TypoStyle.l1(context).copyWith(
                    color: AppColors.primaryBrown,
                  ),
                  decoration: const InputDecoration(
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
          const Gap(24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Dan bunga Matahari-ku adalah',
                style: TypoStyle.l1(context).copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryBrown,
                ),
              ),
              const Gap(8),
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.next,
                  style: TypoStyle.l1(context).copyWith(
                    color: AppColors.primaryBrown,
                  ),
                  decoration: const InputDecoration(
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
          const Gap(24),
          Text(
            'Ini ceritaku tentang dia',
            style: TypoStyle.l1(context).copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBrown,
            ),
          ),
          const Gap(8),
          Container(
            decoration: BoxDecoration(
              color: AppColors.paleYellow,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: const TextField(
              textInputAction: TextInputAction.done,
              maxLines: 5,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          if (isMobile) ...[
            const Gap(24),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                ),
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text(
                  'Kirim',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   // mainAxisSize: MainAxisSize.min,
    //   children: [
    //     // GestureDetector(
    //     //   onTap: context.read<HomeCubit>().hideForm,
    //     //   child: const Row(
    //     //     children: [
    //     //       Icon(
    //     //         Icons.arrow_back,
    //     //       ),
    //     //       Text('Kembali'),
    //     //     ],
    //     //   ),
    //     // ),
    //     Text('aaa'),
    //     Text('Ha semua, kenalin aku'),
    //     Text('Halo semua, kenalin aku'),
    //     Gap(24),
    //     const Row(
    //       children: [
    //         Text('Halo semua, kenalin aku'),
    //         TextField(),
    //       ],
    //     )
    //   ],
    // );
  }
}

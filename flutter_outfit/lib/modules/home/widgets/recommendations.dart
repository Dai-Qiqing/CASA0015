import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_outfit/modules/home/widgets/recommendations_item.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    final l10n = AppLocalizations.of(context);
    var sliderController = CarouselSliderController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.recommendation,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.h),
        Obx(
          () => CarouselSlider(
            items: List.generate(
              controller.recommendations.length,
              (i) => RecommendationsItem(
                item: controller.recommendations[i],
              ),
            ).toList(),
            carouselController: sliderController,
            options: CarouselOptions(
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              height: 469.h,
              autoPlay: true,
              onPageChanged: (index, reason) =>
                  controller.recommendationIndex.value = index,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        IndicatorView(),
      ],
    );
  }
}

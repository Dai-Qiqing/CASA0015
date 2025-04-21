import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RecordList extends StatelessWidget {
  const RecordList({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RecordController>();
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
              controller.records.length,
              (i) => RecordItem(
                item: controller.records[i],
              ),
            ).toList(),
            carouselController: sliderController,
            options: CarouselOptions(
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              height: 469.h,
              autoPlay: true,
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}

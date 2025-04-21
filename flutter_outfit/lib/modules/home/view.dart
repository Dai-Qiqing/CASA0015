import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView() {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorValue.gradientStart,
                ColorValue.gradientCenter,
                ColorValue.gradientEnd,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(10.w),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    SearchInput(),
                    SizedBox(height: 20.h),
                    Recommendations(),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "home",
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

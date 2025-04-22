import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  // 主视图
  Widget _buildView(context) {
    final l10n = AppLocalizations.of(context);
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
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 20.h,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    SearchInput(),
                    SizedBox(height: 20.h),
                    Obx(
                      () => controller.recommendations.isEmpty
                          ? Center(
                              child: Text(
                                l10n.emptyTip,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          : Recommendations(),
                    ),
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
            child: _buildView(context),
          ),
        );
      },
    );
  }
}

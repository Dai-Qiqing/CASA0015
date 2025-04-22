import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({super.key});

  // 主视图
  Widget _buildView() {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.all(10.w),
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
      child: Stack(
        children: [
          FavoriteList(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: EditView(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return GetBuilder<FavoriteController>(
      init: FavoriteController(),
      id: "favorite",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Favorites"),
            centerTitle: true,
            actions: [
              Obx(
                () => Container(
                  height: 26.h,
                  margin: EdgeInsets.only(right: 10.w),
                  child: TextButton(
                    onPressed: controller.toggleMode,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      backgroundColor: Color(0xFFD09ECA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    child: Text(
                      controller.editMode.value ? l10n.complete : l10n.edit,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

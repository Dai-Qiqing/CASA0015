import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class RecordPage extends GetView<RecordController> {
  const RecordPage({super.key});

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
      child: Column(
        children: [
          RecordList(),
          SizedBox(height: 25.h),
          DateList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecordController>(
      init: RecordController(),
      id: "record",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Records"),
            centerTitle: true,
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProfileController>();
    return Obx(
      () => Row(
        children: [
          CircleAvatar(
            radius: 36.r,
            backgroundColor: Colors.brown[200],
            child: controller.avatarUrl.value.isNotEmpty
                ? ClipOval(
                    child: Image.network(
                      controller.avatarUrl.value,
                      width: 72.r,
                      height: 72.r,
                      fit: BoxFit.cover,
                    ),
                  )
                : Icon(
                    Icons.person,
                    size: 40.sp,
                    color: Colors.white,
                  ),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                controller.userName.value,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                controller.email.value,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

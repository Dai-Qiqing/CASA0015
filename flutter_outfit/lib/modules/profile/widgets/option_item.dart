import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10.h),
      leading: Icon(
        icon,
        color: Colors.brown,
        size: 24.sp,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16.sp,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }
}

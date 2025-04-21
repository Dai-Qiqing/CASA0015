import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordItem extends StatelessWidget {
  const RecordItem({
    super.key,
    required this.item,
  });

  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 351.w,
      height: 579.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.r,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15.r),
              ),
              child: Image.network(
                item.picture!,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 302.w,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 20.h,
            ),
            child: Column(
              children: [
                Text(
                  item.name!,
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                Text(
                  item.description!,
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

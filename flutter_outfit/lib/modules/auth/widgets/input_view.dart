import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputView extends StatelessWidget {
  const InputView({
    super.key,
    required this.controller,
    this.obscureText,
    required this.label,
    required this.icon,
    required this.tip,
  });

  final dynamic controller;
  final dynamic obscureText;
  final dynamic label;
  final dynamic icon;
  final dynamic tip;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      validator: (v) => v!.isEmpty ? tip : null,
    );
  }
}

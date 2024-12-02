import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitch_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor:Colors.white,
        maximumSize: Size(double.infinity, 45.h),
      ),
        onPressed: onTap,
        child: Text(text),
    );

  }
}

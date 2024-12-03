import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitch_clone/main.dart';
import 'package:twitch_clone/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to \Twitch",
              style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(text: "Log in", onTap: () {
                    Navigator.pushNamed(context, "/login");
                  })),
            ),
            SizedBox(
                width: double.infinity,
                child: CustomButton(text: "Sign Up", onTap: () {
                  Navigator.pushNamed(context, "/signup");
                })),
          ],
        ),
      ),
    );
  }
}

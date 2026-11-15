import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:login_app/core/app_color.dart';
import 'package:login_app/core/images.dart';
import 'package:login_app/core/widgets/custom_text_field.dart';
import 'package:login_app/core/widgets/text_hint.dart';

import '../core/text_styling.dart';
import '../core/widgets/custom_bottom.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(Images.signUp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(270.h),
                TextHint(name: "Email",),
                Gap(5.h),
                CustomTextField(hintText: "demo@email.com",
                  prefixIcons: Icon(Icons.email_outlined),
                  color: AppColor.colorTextField,
                ),
                Gap(30.h),
                TextHint(name: "Phone no",),
                Gap(5.h),
                CustomTextField(hintText: "+00 000-0000-000",
                  prefixIcons: Icon(Icons.phone_android_outlined),
                  color: AppColor.colorTextField,
                ),
                Gap(30.h),
                TextHint(name: "Password",),
                Gap(5.h),
                CustomTextField(hintText: "enter your password",
                  prefixIcons: Icon(Icons.lock_outline) ,
                  color: AppColor.secondary,
                  suffixIcon: Icon(Icons.remove_red_eye ,color: Colors.grey.shade400,),
                  ),
                Gap(30.h),
                TextHint(name: "Confirm Password",),
                Gap(5.h),
                CustomTextField(hintText: "Confirm your password",
                  prefixIcons: Icon(Icons.lock_outline),
                  color: AppColor.secondary,
                  suffixIcon:Icon(Icons.remove_red_eye ,color: Colors.grey.shade400),
                ),

                Gap(70.h),
                CustomBottom(name: "Create Account"),
                Gap(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextStyling
                      (name: "Don’t have an Account ? ",
                      size: 14.sp,
                      weight: FontWeight.w400 ,
                      color: Color(0xff9E9E9E),),
                    TextStyling(
                      name: "Sign up",
                      size: 14.sp,
                      weight: FontWeight.w500 ,
                      color: AppColor.primary,
                    ),
                  ],
                ),
                Gap(40.h),
              ],
            ),
            Positioned(
                top: 190.h,
                left: 20.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStyling(name: "Sign up", size: 38.sp, weight: FontWeight.w600),
                    Image.asset(Images.line, width: 75.w,)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

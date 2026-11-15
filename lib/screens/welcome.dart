import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/core/images.dart';
import 'package:login_app/core/text_styling.dart';
import 'package:login_app/screens/sign_in.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Images.welcome),

        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             TextStyling(name: "Welcome", size: 40.sp, weight: FontWeight.w600),
             TextStyling(name: "Lorem ipsum dolor sit amet consectetur.\nLorem id sit ",
               size: 14.sp,
               weight: FontWeight.w500 ,
               color: Color(0xffBDBDBD),)
            ]
          ),
        ),

        Gap(60.h),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextStyling(name: "Continue", size: 14.sp, weight: FontWeight.w500, color:Color(0xff9E9E9E)),
                Gap(10.w),
                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn())),
                    child: Image.asset(Images.click , width: 50.w,height: 50.h,)),
              ],
            ),
          )


        ],
      ),
    );
  }
}

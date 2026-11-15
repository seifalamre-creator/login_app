import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:login_app/core/text_styling.dart';
import 'package:login_app/core/widgets/custom_bottom.dart';
import 'package:login_app/core/widgets/custom_text_field.dart';
import 'package:login_app/core/widgets/text_hint.dart';
import 'package:login_app/screens/sign_up.dart';

import '../core/app_color.dart';
import '../core/images.dart';

class SignIn extends StatelessWidget {
   const SignIn({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Images.signIn),
                TextHint(name: "Email",),
                Gap(10.h),
                CustomTextField(
                  hintText: "demo@email.com",
                  prefixIcons: Icon(Icons.email_outlined) ,
                  color: AppColor.colorTextField,
                ),
                Gap(24.h),
                TextHint(name: "Password",),
                Gap(10.h),
                CustomTextField(
                  hintText: "enter your password",
                  prefixIcons: Icon(Icons.lock_outlined) ,
                  color: Colors.grey.shade400,
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey),
                ),
                Gap(30.h),
            
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextStyling(name: "Forgot Password?", size: 12.sp, weight: FontWeight.w500 , color: AppColor.primary,)
                    ],
                  ),
                ),
                Gap(60.h),
                CustomBottom(name: "Login"),
                Gap(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextStyling(name: "Don’t have an Account ? ", size: 14.sp, weight: FontWeight.w400 , color: Color(0xff9E9E9E),),
                    GestureDetector(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUp())),
                        child: TextStyling(name: "Sign up",
                          size: 14.sp,
                          weight: FontWeight.w500 ,
                          color: AppColor.primary,
                        )),
                  ],
                ),
                Gap(50.h)
              ],
            ),
            Positioned(
              top: 320.h,
                left: 20.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStyling(name: "Sign in", size: 38.sp, weight: FontWeight.w600),
                    Image.asset(Images.line, width: 75.w,)
                  ],
                )),
        
          ],
        ),
      )
    );
  }
}

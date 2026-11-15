import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';
import '../text_styling.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key,
    required this.name
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 50.h,
        width: 345.w,
        decoration:BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadiusGeometry.circular(12.r),

        ) ,
        child: Center(
            child: TextStyling(
              name: name,
              size: 18.sp,
              weight: FontWeight.w600
              ,color: Colors.white,
            )),

      ),
    );
  }
}

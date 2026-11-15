import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key,
     required this.hintText, 
     required this.prefixIcons,
     this.suffixIcon,
     this.color = Colors.white,
   });

  final String hintText;
  final Icon prefixIcons;
   final Widget? suffixIcon;
   final Color color;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.r),
      child: TextField(

        decoration: InputDecoration(
            prefixIcon: prefixIcons,
            suffixIcon:suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: color,
            ),

            border: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.primary,
                )
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: AppColor.secondary
                )
            )
        ),

      ),
    );
  }
}

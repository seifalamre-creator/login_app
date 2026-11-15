import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';
import '../text_styling.dart';

class TextHint extends StatelessWidget {
  const TextHint({super.key
    , required this.name
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.r),
        child: TextStyling(name:name, size: 16.sp, weight: FontWeight.w600 , color: AppColor.colorTextField,),
      );
  }
}

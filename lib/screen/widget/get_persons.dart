import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget getPerson({required String text, required String svg}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: Color(0xFF1151FB).withOpacity(0.2),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: SvgPicture.asset(svg),
      ),
      SizedBox(
        height: 8.h,
      ),
      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          color: Color(0xFF3E4958),
        ),
      ),
    ],
  );
}

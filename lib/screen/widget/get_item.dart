import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

Widget getItem() {
  return Stack(
    children: [
    Container(
    width: 303.w,
    padding: EdgeInsets.fromLTRB(13.w, 14.h, 14, 16.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(19.r),
    ),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 164.w,
              height: 94.h,
              child: Image.asset("assets/image/img.png"),
            ),
            SizedBox(height: 10.h,),
            SvgPicture.asset("assets/icons/3.svg"),
          ],
        ),
        SizedBox(
          width: 16.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3E4958),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Air Max 2090",
              style: TextStyle(
                color: Color(0xFF3E4958),
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            ZoomTapAnimation(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.fromLTRB(9.w, 10.h, 9.w, 11.h),
                decoration: BoxDecoration(
                  color: Color(0xFF3E4958),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp),
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    ),
  ),
    ],
  );
}

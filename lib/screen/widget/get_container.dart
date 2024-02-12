import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

Widget getContainer(){
  return Container(
    width: 144.w,
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 156.h,
              width: 125.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset(
                  "assets/image/img_2.png",
                ),
              ),
            ),
            Positioned(
              right: 10.w,
              top: 30.h,
              child:
              ZoomTapAnimation(child: SvgPicture.asset('assets/icons/layk.svg'),),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nike React Miler",
              style: TextStyle(
                color: Color(0xFF3E4958),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 3.h,),
            Container(
              width: 54.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xFFD5DDE0),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                child: Text(
                  "5 colors",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 9.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Text("\$150.00", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),),
                Spacer(),
                ZoomTapAnimation(child: SvgPicture.asset('assets/icons/plus.svg'),),
              ],
            ),
            SizedBox(height: 15.h,),
          ],
        ),
      ],
    ),
  );
}
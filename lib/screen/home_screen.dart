import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:two_exam/screen/widget/get_container.dart';
import 'package:two_exam/screen/widget/get_item.dart';
import 'package:two_exam/screen/widget/get_persons.dart';
import 'package:two_exam/screen/widget/text_field.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 231.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF1152FD),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(38.r),
                      bottomLeft: Radius.circular(38.r),
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 53.h,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 36.w),
                        child: SizedBox(
                          width: 200.w,
                          child: textField3(text2: "Search"),
                        ),
                      ),
                      // SizedBox(width: 19.w,),

                      ZoomTapAnimation(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(20.r),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/icons/kamera.svg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  getItem(),
                  SizedBox(
                    height: 19.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 36.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZoomTapAnimation(
                          child:
                          getPerson(text: "Men", svg: "assets/icons/1.svg"),
                        ),
                        ZoomTapAnimation(
                          child: getPerson(
                              text: "Women", svg: "assets/icons/2.svg"),
                        ),
                        ZoomTapAnimation(
                          child: getPerson(
                              text: "Kids", svg: "assets/icons/4.svg"),
                        ),
                        ZoomTapAnimation(
                          child: getPerson(
                              text: "Sale", svg: "assets/icons/5.svg"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 36.w),
                          child: Row(
                            children: [
                              Text(
                                "New Products",
                                style: TextStyle(
                                  color: Color(0xFF3E4958),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Spacer(),
                              ZoomTapAnimation(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 10.h),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF1152FD),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "View all",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26.h,
                        ),
                        SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: 30.r),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                              SizedBox(
                                width: 10.w,
                              ),
                              getContainer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Positioned(
              //   bottom: 0.h,
              //   child: Container(
              //     padding:
              //         EdgeInsets.symmetric(horizontal: 36.w, vertical: 22.h),
              //     width: double.infinity,
              //     // height: 68.h,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.only(
              //         topRight: Radius.circular(5.r),
              //         topLeft: Radius.circular(5.r),
              //       ),
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         ZoomTapAnimation(
              //           onTap: () {},
              //           child: SvgPicture.asset(
              //             "assets/icons/home.svg",
              //           ),
              //         ),
              //         ZoomTapAnimation(
              //           onTap: () {},
              //           child: SvgPicture.asset(
              //             "assets/icons/layk.svg",
              //           ),
              //         ),
              //         ZoomTapAnimation(
              //           onTap: () {},
              //           child: SvgPicture.asset(
              //             "assets/icons/korzina.svg",
              //           ),
              //         ),
              //         ZoomTapAnimation(
              //           onTap: () {},
              //           child: SvgPicture.asset(
              //             "assets/icons/profile.svg",
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),


            ],
          ),
        )

      ),
    );
  }
}

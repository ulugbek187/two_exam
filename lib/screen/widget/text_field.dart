import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget textField3({required String text2}){
  return TextField(

    textInputAction: TextInputAction.next,
    maxLines: 1,
    readOnly: false,
    enabled: true,
    decoration: InputDecoration(
      filled: true,
      fillColor:  Colors.white,
      contentPadding: EdgeInsets.all(21.h),
      hintText: text2,
      hintStyle: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize:  16,
        color: Color(0xFFACA2C3),
      ),
      prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search),),
      focusedBorder:OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),

        borderSide: BorderSide(
          width: 1,
          color: Colors.blueAccent,
        ),
      ),
      enabledBorder:OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
        borderSide: BorderSide(
          width: 1,
          color: Colors.black.withOpacity(0.05000000074505806),
        ),
      ),
    ),
  );
}
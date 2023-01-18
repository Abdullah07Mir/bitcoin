import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class C_iconbutton extends StatelessWidget {
  String txt;
  Icon icons;
  Color colors;
  VoidCallback onpres;
  Color backColor;
  C_iconbutton({
    required this.txt,
    required this.icons,
    required this.onpres,
    required this.colors,
    required this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 36.h,
      width: 120.w,
      child: ElevatedButton.icon(
      label: Text(txt, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp, color: colors),),
      icon: icons,
      onPressed: onpres,
      style: ElevatedButton.styleFrom(
        backgroundColor: backColor,
        
      ),
  ),
    );
  }
}
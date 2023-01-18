import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Clisttile extends StatelessWidget {
  String txt;
  String? sbtxt;
  Clisttile({required this.txt, this.sbtxt=''});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
          title: Text(
            txt,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: Colors.black),
          ),
          trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.black, size: 18.sp,),
          subtitle: Text(sbtxt!),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTxtfield extends StatelessWidget {
  String hintTxt;
  Icon icon;
  bool? obstxt;
  Icon? icons;
  TextEditingController controller;
  CustomTxtfield({
    required this.hintTxt,
    required this.icon,
    required this.controller,
    this.obstxt=false,
    this.icons,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obstxt!,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintTxt,
        suffixIcon: icons,
      ),
    );
  }
}

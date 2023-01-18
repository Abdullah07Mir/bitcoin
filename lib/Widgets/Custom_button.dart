import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Icon? icons;
  String txt;
  Color colors;
  Color txtColor;
  Color borderColor;
  VoidCallback onPres;
  CustomButton({
    this.icons,
    required this.borderColor,
    required this.txt, required this.onPres, required this.colors,
    required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPres,
      icon: icons!,
      label: Text(
        txt,
        style: TextStyle(color: txtColor),
      ),
      style: ElevatedButton.styleFrom(
        
        primary: colors,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: borderColor, width: 2),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPaper_1 extends StatelessWidget {
  const NewPaper_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 196.h,
            width: 360.w,
            child: Stack(
              children: [
                Container(
                    height: 196.h,
                    width: 360.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/image 5.png',
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 34.h, left: 18.w),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 18.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff265955),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 15.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Best trading report package april 6,2022',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
          ),
          SizedBox(
            height: 14.h,
          ),
          Container(
            height: 254.h,
            width: 330.w,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class notificationIcon extends StatelessWidget {
  const notificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.amber,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w, right: 2.h),
                            child: Container(
                              height: 12.h,
                              width: 12.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.red),
                              child: Center(
                                  child: Text(
                                '1',
                                style:
                                    TextStyle(fontSize: 11.sp, color: Colors.white),
                              )),
                            ),
                          )
                        ],
                      );
  }
}
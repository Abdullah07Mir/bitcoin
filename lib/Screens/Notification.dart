import 'package:bitcoin_flutter/Widgets/topbar_nicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topbarNicon(txt: 'notifications'),
          SizedBox(height: 18.h,),
          
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder:(BuildContext context, int index){
                
                return 
                Container(
                  margin: EdgeInsets.only(top: 11.h),
                height: 75.h,
                width: 319.w,
                decoration: BoxDecoration(
                    color: Color(0xff265955),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: ListTile(
                    title: Text(
                      'New Notofication',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      '24 june, 2023',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Colors.white),
                    ),
                  ),
                ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}

import 'package:bitcoin_flutter/Widgets/Custom_listtile.dart';
import 'package:bitcoin_flutter/Widgets/Custom_topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            C_topbar(txt: 'Profile', icons: Icon(Icons.account_circle, color: Colors.amber,)),
          SizedBox(
            height: 18.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w),
            child: Container(
              width: 319.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff265955),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 9.w, right: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mr.John',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 132.w),
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '\$7,205.99',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'General',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          Clisttile(txt: 'Notification'),
          SizedBox(
            height: 21.h,
          ),
          Clisttile(txt: 'My Account'),
          SizedBox(
            height: 21.h,
          ),
          Clisttile(txt: 'Contact Us'),
          SizedBox(
            height: 29.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w),
            child: Text(
              'Security',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 28.h,),
          Clisttile(txt: 'Change password'),
          SizedBox(height: 20.h,),
          Clisttile(txt: 'Privacy policy', sbtxt: 'Choose what data you share with us ',)
              ],
            ),
        ));
  }
}

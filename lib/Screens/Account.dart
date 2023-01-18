import 'package:bitcoin_flutter/Screens/CLose.dart';
import 'package:bitcoin_flutter/Screens/Notification.dart';
import 'package:bitcoin_flutter/Screens/Open.dart';
import 'package:bitcoin_flutter/Screens/Pending.dart';
import 'package:bitcoin_flutter/Widgets/Custom_iconbutton.dart';
import 'package:bitcoin_flutter/Widgets/notification_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(350.h),
          child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 26.h, left: 18.w),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 18.h,
                          width: 18.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff265955)),
                          child: Icon(
                            Icons.arrow_back,
                            size: 15.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w, right: 21.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Accounts',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 24.sp),
                          ),
                          InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NotificationScreen(),
                                  )),
                              child: notificationIcon()),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 205.h,
                        width: 318.w,
                        child: Card(
                          elevation: 5,
                          color: Color(0xff265955),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 32.h,
                                ),
                                Text(
                                  '#92454544',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.sp,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  'Demo Accounts',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '10,0000,000.00 USD',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp,
                                          color: Colors.white),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 16.w),
                                      child: Image.asset(
                                          'assets/images/Vector.png'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: C_iconbutton(
                                          txt: 'Deposit',
                                          backColor: Color(0xffD9D9D9),
                                          icons: Icon(
                                            Icons.download,
                                            color: Color(0xff153F3B),
                                            size: 20.sp,
                                          ),
                                          onpres: () {},
                                          colors: Colors.black),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border:
                                              Border.all(color: Colors.white)),
                                      child: C_iconbutton(
                                          txt: 'Withdraw',
                                          backColor: Color(0xff265955),
                                          icons: Icon(
                                            Icons.reply,
                                            color: Colors.white,
                                            size: 17.sp,
                                          ),
                                          onpres: () {},
                                          colors: Colors.white),
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    TabBar(
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            'Open',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Pending',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Close',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ),
        body: TabBarView(
          children: [
            Open(),
            Pending(),
            Close(),
          ],
        ),
      ),
    );
  }
}

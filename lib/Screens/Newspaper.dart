import 'package:bitcoin_flutter/Screens/newspaper%201.dart';
import 'package:bitcoin_flutter/Widgets/topbar_nicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsPaper extends StatelessWidget {
  const NewsPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topbarNicon(txt: 'News'),
          SizedBox(
            height: 17.h,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 21.w),
                  child: InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NewPaper_1(),)),
                    child: Container(
                      height: 192.h,
                      width: 319.w,
                      color: Color(0xff265955),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/image 3.png',
                            height: 164.h,
                            width: 156.w,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40.h,
                                width: 142.w,
                                child: Text(
                                  'Best trading report package',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.sp,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              SizedBox(
                                height: 43.h,
                                width: 142.w,
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10.sp,
                                      color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 70.w),
                                child: Container(
                                  height: 12.h,
                                  width: 56.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Read more',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 8.sp,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              Container(
                                width: 120.w,
                                height: 19.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffD9D9D9),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  Icon(Icons.calendar_today_rounded, size: 14.sp,),
                                  Text('April 6, 2022', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),)
                                ],),
                              ),
                              SizedBox(height: 8.h,),
                              Container(
                                width: 120.w,
                                height: 19.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffD9D9D9),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                  Icon(Icons.access_time_rounded, size: 14.sp,),
                                  Text('06:00-08:00 pm', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),)
                                ],),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bitcoin_flutter/Widgets/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Market_1 extends StatelessWidget {
  const Market_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(
            height: 3.h,
          ),
          Center(
              child: Image.asset(
            'assets/images/bit.png',
            height: 59.h,
            width: 59.h,
          )),
          SizedBox(
            height: 3.h,
          ),
          Center(
              child: Text(
            'BITCOIN(BTC)',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
          )),
          SizedBox(
            height: 4,
          ),
          Center(
              child: Text(
            '\$320,531.09',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
          )),
          SizedBox(
            height: 22.h,
          ),
          Center(
              child: Image.asset(
            'assets/images/image 9.png',
            height: 282.h,
            width: 328.h,
          )),
          SizedBox(
            height: 18.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  txt: 'Buy',
                  txtColor: Colors.white,
                  onPres: () {},
                  borderColor: Color(0xff265955),
                  colors: Color(0xff265955),
                  icons: Icon(Icons.baby_changing_station_rounded)),
              SizedBox(
                width: 10.w,
              ),
              CustomButton(
                  txt: 'Sell',
                  txtColor: Colors.black,
                  onPres: () {},
                  borderColor: Colors.black,
                  colors: Colors.white,
                  icons: Icon(
                    Icons.stroller_outlined,
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(
            height: 33.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Container(
              height: 138.h,
              width: 329.w,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy tex',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bitcoin_flutter/Controllers/market_controller.dart';
import 'package:bitcoin_flutter/Screens/Market%201.dart';
import 'package:bitcoin_flutter/Widgets/topbar_nicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<marketController>().marketD();
    return Scaffold(
      body: SingleChildScrollView(
        child: GetBuilder<marketController>(builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topbarNicon(txt: 'Market'),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Container(
                  width: 319.w,
                  height: 57.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff265955),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.w, right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 9.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  '#92454544',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Text(
                              'Demo Accounts',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 120.w,
                              child: Text(
                                '${controller.list[0].price.toString()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              'USD',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  'Top Movers',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 530.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w, right: 18.w),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 105,
                              //childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                      itemCount: controller.list.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Market_1(),
                              )),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff265955),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          height: 45.h,
                                          width: 35.w,
                                          child: SvgPicture.network(
                                            controller.list[index].iconUrl
                                                .toString(),
                                            height: 45.h,
                                            width: 45.w,
                                          )),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        controller.list[index].symbol
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20.sp,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Image.asset('assets/images/image 2.png'),
                                  Container(
                                    height: 24.h,
                                    width: 80.w,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 15.h,
                                            width: 36.w,
                                            child: Text(
                                              controller.list[index].change
                                                      .toString()
                                                      .contains('-')
                                                  ? '${controller.list[index].change.toString()}%'
                                                  : controller.list[index].change
                                                          .toString()
                                                          .contains('null')
                                                      ? '${controller.list[index].change.toString()}%'
                                                      : '+${controller.list[index].change.toString()}%',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/images/Vector1.png',
                                            height: 8.h,
                                            width: 12,
                                          )
                                        ],
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffD9D9D9),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

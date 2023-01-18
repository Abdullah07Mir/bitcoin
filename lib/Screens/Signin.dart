import 'package:bitcoin_flutter/Controllers/Signin_Controller.dart';
import 'package:bitcoin_flutter/Screens/Account.dart';
import 'package:bitcoin_flutter/Screens/Signup.dart';
import 'package:bitcoin_flutter/Widgets/Bottom_Navbar.dart';
import 'package:bitcoin_flutter/Widgets/Custom_button.dart';
import 'package:bitcoin_flutter/Widgets/Custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  Signin({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/authpic.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/Rectangle 9.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 123.h, left: 124.w),
            child: Text(
              'Sign In',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 182.h, left: 41.w),
            child: Text(
              'Sign in your account to get started',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 290.h, left: 64.w),
            child: Container(
                height: 42.h,
                width: 232.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: CustomTxtfield(
                  controller: email,
                  hintTxt: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 3, 78, 42),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 372.h, left: 64.w),
            child: Container(
                height: 42.h,
                width: 232.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: CustomTxtfield(
                  controller: password,
                  hintTxt: 'Password',
                  icons: Icon(
                    Icons.remove_red_eye,
                    color: Color.fromARGB(255, 3, 78, 42),
                  ),
                  obstxt: true,
                  icon: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 3, 78, 42),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 425.h, left: 180.w),
            child: Text(
              'forgot password?',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 508.h, left: 59.w),
            child: Container(
              height: 44.h,
              width: 241.w,
              child: CustomButton(
                txt: 'Sign in',
                icons: Icon(
                  Icons.login,
                  color: Colors.black,
                ),
                txtColor: Colors.black,
                borderColor: Color(0xff9AC938),
                colors: Color(0xff9AC938),
                onPres: () => Get.find<SigninController>()
                    .singin(email.text.trim(), password.text.trim()),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 563.h, left: 75.w),
            child: Row(
              children: [
                Text(
                  'Don’t have an account ? ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.white),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(),
                      )),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xffCFFE5F),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

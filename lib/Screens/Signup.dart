import 'package:bitcoin_flutter/Controllers/Signup_Controller.dart';
import 'package:bitcoin_flutter/Screens/Signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Widgets/Custom_button.dart';
import '../Widgets/Custom_textfield.dart';

class Signup extends StatelessWidget {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
          padding: EdgeInsets.only(top: 97.h, left: 126.w),
          child: Text(
            'Sign Up',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32.sp,
                color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 156.h, left: 43.w, right: 43.w),
          child: Text(
            'Create new account to begin your journey with Crypto Alert',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 253.h, left: 64.w),
          child: Container(
            height: 42.h,
            width: 232.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: CustomTxtfield(
              controller: name,
              
              hintTxt: 'Name',
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 3, 78, 42),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 336.h, left: 64.w),
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
                Icons.person,
                color: Color.fromARGB(255, 3, 78, 42),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 419.h, left: 64.w),
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
              obstxt: true,
              icons: Icon(
                Icons.remove_red_eye,
                color: Color.fromARGB(255, 3, 78, 42),
              ),
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 3, 78, 42),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 512.h, left: 64.w),
          child: Container(
            height: 42.h,
            width: 232.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: CustomTxtfield(
              controller: cPassword,
              hintTxt: 'Confirm Password',
              obstxt: true,
              icons: Icon(
                Icons.remove_red_eye,
                color: Color.fromARGB(255, 3, 78, 42),
              ),
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 3, 78, 42),
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
              top: 555.h,
              left: 40.w,
            ),
            child: Row(
              children: [
                Checkbox(
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  value: this.value,
                  onChanged: (value) {},
                ),
                Container(
                  width: 206.w,
                  height: 36.h,
                  child: RichText(
                    text: TextSpan(
                      text: 'I Agree ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'privacy policies ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffCFFE5F),
                          ),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffCFFE5F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Padding(
          padding: EdgeInsets.only(top: 640.h, left: 59.w),
          child: Container(
            height: 44.h,
            width: 241.w,
            child: CustomButton(
              txt: 'Sign up',
              icons: Icon(
                Icons.login,
                color: Colors.black,
              ),
              borderColor: Color(0xff9AC938),
              txtColor: Colors.black,
              colors: Color(0xff9AC938),
              onPres: () {
                print(name.text.trim().toString());

              Get.find<SignupController>()
                  .signup(name.text.trim(), email.text.trim(), password.text.trim(), cPassword.text.trim());
                  }
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 688.h, left: 75.w),
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
                      builder: (context) => Signin(),
                    )),
                child: Text(
                  'Sign in',
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
      ]),
    );
  }
}

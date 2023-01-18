import 'dart:convert';

import 'package:bitcoin_flutter/Screens/Signin.dart';
import 'package:bitcoin_flutter/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  final ApiService apiService;
  SignupController({ required this.apiService});
  signup(name, email, password, cpassword)
  async{
    final Response = await apiService.SignUp(
      {
        'name': name,
        'email': email,
        'password': password,
        'cpassword': cpassword,
      }
    );
    Map<String, dynamic> map = jsonDecode(Response.toString());
    if(Response.statusCode == 200){
      Get.snackbar('SignUp', map['result']);
      Get.to(Signin());
    }
    else{
      Get.snackbar('SignUp', map['message']);
    }
  }
}
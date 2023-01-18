import 'dart:convert';

import 'package:bitcoin_flutter/Screens/Account.dart';
import 'package:bitcoin_flutter/Widgets/Bottom_Navbar.dart';
import 'package:bitcoin_flutter/services/api_services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninController extends GetxController{
  final ApiService apiService;
  SigninController({required this.apiService});
  singin(email, password) async{
    final Response= await apiService.login(
      {
        'email': email,
        'password': password,
      }
    );
    if(Response.statusCode== 201){
      Map<String, dynamic> map = jsonDecode(Response.toString());
      SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
      sharedPreferences.setString('token', map['token']);
      Get.snackbar('login', 'login successfully');
      Get.to(MyNavigationBar());
    }
    else{
      Get.snackbar('login', 'login Unsuccessfully');
    }
  }
}
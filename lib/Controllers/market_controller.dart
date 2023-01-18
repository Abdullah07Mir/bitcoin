import 'dart:convert';

import 'package:bitcoin_flutter/services/api_services.dart';
import 'package:get/get.dart';

import '../Models/Trade.dart';

class marketController extends GetxController{
  List<Coins> list=[];
  final ApiService apiService;
  marketController({required this.apiService});
  void marketD()async{
    final Response = await apiService.marketData({
      'referenceCurrencyUuid': 'yhjMzLPhuIDl',
      'orderBy': 'change',
      'orderDirection': 'desc',
      'limit': '50',
      'tags': 'exchange',
    }
    );
    if(Response.statusCode == 200){
      Map<String, dynamic> map = jsonDecode(Response.toString());
      if(map['status']== "success"){
        list= (map['data']['coins'] as List).map((e) => Coins.fromJson(e)).toList();
        print(list[0].name);
        update();
      }
      else{
        Get.snackbar('error', 'failed to load data');
      }
    }
    update();
  }
} 

import 'dart:convert';

import 'package:bitcoin_flutter/services/api_services.dart';
import 'package:get/get.dart';

import '../Models/Trade.dart';

class treadeController extends GetxController{
List<Coins> list=[];
final ApiService apiService;
treadeController({ required this.apiService});
void tradeD()async{
  final Response = await apiService.tradeData({
    'referenceCurrencyUuid': 'yhjMzLPhuIDl',
    'orderBy': 'marketCap',
    'orderDirection': 'desc',
    'limit': '50',

  });
  if(Response.statusCode == 200){
    Map<String, dynamic> map= jsonDecode(Response.toString());
    if(map['status'] == "success"){
      list = (map['data']['coins'] as List).map((e) => Coins.fromJson(e)).toList();
      print(list[0].btcPrice!.length);
      update();
    }
    else{
    Get.snackbar('Trade', 'Failed to get trade data');
  }
  }
  update();
  
}
}

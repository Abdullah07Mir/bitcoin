import 'package:bitcoin_flutter/services/network_client_rapid.dart';
import 'package:dio/dio.dart';

import 'network_client.dart';

class ApiService {
  final NetworkClient networkClient;
  final NetworkClientRapid networkClientRapid;
  ApiService({required this.networkClient, required this.networkClientRapid});

  Future<Response> SignUp(Map<String, Object> params) {
    return networkClient.post(
        'https://ahsan.metaversepro.space/public/api/register-user', params);
  }

  Future<Response> login(Map<String, Object> params) {
    return networkClient.post(
        'https://ahsan.metaversepro.space/public/api/login-user', params);
  }

  Future<Response> logout() {
    return networkClient.post('api/logout', {});
  }

  Future<Response> getContactData() {
    return networkClient.get('api/show_all_contact', {});
  }

  Future<Response> tradeData(Map<String, Object> params) {
    return networkClientRapid.get(
        'https://coinranking1.p.rapidapi.com/coins', params);
  }
  Future<Response> marketData(Map<String, Object> params) {
    return networkClientRapid.get(
        'https://coinranking1.p.rapidapi.com/coins', params);
  }
}

// ignore_for_file: prefer_const_constructors, unused_field, non_constant_identifier_names, avoid_print, unused_local_variable

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String urlBasee;

  late Map<String, String> _mainHeader;
  ApiClient({required this.urlBasee}) {
    baseUrl = urlBasee;
    token = "";
    timeout = Duration(seconds: 30);
    _mainHeader = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearar $token'
    };
  }
  Future<Response> getData(String url) async {
    try {
      Response response = await get(url);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

  void updateHeader(String token) {
    _mainHeader = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearar $token'
    };
  }
}

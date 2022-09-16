import 'package:delivery_app/api_client.dart/api_client.dart';
import 'package:delivery_app/app_const/app_const.dart';
import 'package:get/get.dart';

class IntroRepo extends GetxService {
  final ApiClient apiClient;
  IntroRepo({required this.apiClient});

  Future<Response> getIntroList() async {
    return await apiClient.getData(AppConst.INTRO);
  }
}

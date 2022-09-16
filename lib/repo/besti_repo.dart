import 'package:delivery_app/api_client.dart/api_client.dart';
import 'package:delivery_app/app_const/app_const.dart';
import 'package:get/get.dart';

class BestiRepo extends GetxService {
  final ApiClient apiClient;

  BestiRepo({required this.apiClient});

  Future<Response> getBestiList() async {
    return await apiClient.getData(AppConst.BEST_CHOICE);
  }
}

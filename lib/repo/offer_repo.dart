import 'package:delivery_app/api_client.dart/api_client.dart';
import 'package:delivery_app/app_const/app_const.dart';
import 'package:get/get.dart';

class OfferRepo extends GetxService {
  final ApiClient apiClient;

  OfferRepo({required this.apiClient});
  Future<Response> getOfferList() async {
    return await apiClient.getData(AppConst.OFFER);
  }
}

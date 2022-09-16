import 'package:delivery_app/models/best.dart';
import 'package:delivery_app/models/intro.dart';
import 'package:delivery_app/repo/intro_repo.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final IntroRepo introRepo;

  List<IntroModel> _popularList = [];
  List<IntroModel> get popularList => _popularList;
  Map<int, IntroModel> _items = {};
  IntroController({required this.introRepo});
  Future<void> getIntroControllerList() async {
    Response response = await introRepo.getIntroList();
    if (response.statusCode == 200) {
      _popularList = [];
      _popularList.addAll(IntroProduct.fromJson(response.body).product);
    }
    update();
  }

  void addItems(int quantity, IntroModel product) {
    _items.putIfAbsent(product.id!, () => IntroModel());
  }
}

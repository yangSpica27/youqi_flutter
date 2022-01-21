import 'package:get/get.dart';
import 'package:youqiflutter/app/network/http_utils.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  final RxList dateList = [].obs;

  @override
  void onInit() {
    super.onInit();
    DioUtils.instance.getHomePageInfo((data) {
      dateList.clear();
      dateList.addAll(data ?? []);
    }, (data) {
      print(data.toString());
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:youqiflutter/app/modules/home/bindings/home_binding.dart';
import 'package:youqiflutter/app/modules/home/views/home_view.dart';

import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  //启动页
  static const INITIAL = Routes.HOME;

  //路由名称集合
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
  ];
}

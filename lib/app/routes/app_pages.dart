import 'package:get/get.dart';

import '../modules/AdatList/bindings/adat_list_binding.dart';
import '../modules/AdatList/views/adat_list_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADAT_LIST,
      page: () => const AdatListView(),
      binding: AdatListBinding(),
    ),
  ];
}

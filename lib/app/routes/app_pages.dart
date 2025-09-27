import 'package:get/get.dart';

import '../modules/AdatDetail/bindings/adat_detail_binding.dart';
import '../modules/AdatDetail/views/adat_detail_view.dart';
import '../modules/AdatList/bindings/adat_list_binding.dart';
import '../modules/AdatList/views/adat_list_view.dart';
import '../modules/ModelViewer/bindings/model_viewer_binding.dart';
import '../modules/ModelViewer/views/model_viewer_view.dart';
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
    GetPage(
      name: _Paths.ADAT_DETAIL,
      page: () => const AdatDetailView(),
      binding: AdatDetailBinding(),
    ),
    GetPage(
      name: _Paths.MODEL_VIEWER,
      page: () => const ModelViewerView(),
      binding: ModelViewerBinding(),
    ),
  ];
}

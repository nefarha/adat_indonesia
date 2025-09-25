import 'package:get/get.dart';

import '../controllers/adat_list_controller.dart';

class AdatListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdatListController>(
      () => AdatListController(),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/adat_detail_controller.dart';

class AdatDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdatDetailController>(
      () => AdatDetailController(),
    );
  }
}

import 'package:adat_indonesia/app/data/enums/e_ras.dart';
import 'package:get/get.dart';
import 'package:o3d/o3d.dart';
import 'package:vector_math/vector_math_64.dart';

class ModelViewerController extends GetxController {
  final ERas ras = Get.arguments;
  late O3DController o3dController;

  // Observable states
  final RxBool isModelLoaded = false.obs;
  final RxString statusMessage = 'Ready to load Adat model'.obs;

  @override
  void onInit() {
    super.onInit();
    o3dController = O3DController();
  }

  // Launch AR Mode
  void launchAR() {
    statusMessage.value = 'Launching AR viewer...';
    // AR akan diluncurkan otomatis ketika tombol AR di widget ditekan
  }

  // Model Loading Callbacks
  void onModelLoaded() {
    isModelLoaded.value = true;

    statusMessage.value = 'Adat ${ras.name.capitalize!} model ready for AR';
  }

  void onModelError(String error) {
    isModelLoaded.value = false;
    statusMessage.value = 'Error: $error';
  }
}

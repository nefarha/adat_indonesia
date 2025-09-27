import 'package:adat_indonesia/app/data/enums/e_ras.dart';
import 'package:adat_indonesia/app/data/utils/asset_url.dart';
import 'package:adat_indonesia/app/data/utils/colour_palette.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:o3d/o3d.dart';

import '../controllers/model_viewer_controller.dart';

class ModelViewerView extends GetView<ModelViewerController> {
  const ModelViewerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Model Rumah'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColourPalette.pastelWhite,
        ),
        child: O3D(
          arPlacement: ArPlacement.floor,

          // Model dari assets
          src: switch (controller.ras) {
            ERas.batak => AssetUrl.batakModel,
            ERas.sunda => AssetUrl.sundaModel,
            ERas.dayak => AssetUrl.dayakModel,
            ERas.jawa => AssetUrl.jawaModel,
            ERas.melayu => AssetUrl.melayuModel,
            ERas.bali => AssetUrl.baliModel,
          },
          // AR Configuration - ini yang penting!
          ar: true,
          arModes: const [
            'scene-viewer',
            'webxr',
          ],

          arScale: ArScale.auto,

          // Basic Settings
          cameraControls: true,
          autoRotate: false, // Disabled sesuai request
          // Controller
          controller: controller.o3dController,

          // Basic Styling
          backgroundColor: Colors.grey[50]!,
          loading: Loading.lazy,
        ),
      ),
    );
  }
}

import 'package:adat_indonesia/app/data/models/race_model/race_model.dart';
import 'package:get/get.dart';

class AdatDetailController extends GetxController {
  final model = Get.arguments as RaceModel;

  Map<String, List<LanguageTypeModel>> groupByTingkat() {
    final Map<String, List<LanguageTypeModel>> grouped = {};

    for (var item in model.contohBahasa) {
      final key = item.tingkat ?? "umum";
      grouped.putIfAbsent(key, () => []);
      grouped[key]!.add(item);
    }

    return grouped;
  }
}

import 'package:adat_indonesia/app/data/enums/e_constant.dart';
import 'package:adat_indonesia/app/data/models/race_model/race_model.dart';
import 'package:adat_indonesia/app/data/utils/colour_palette.dart';
import 'package:adat_indonesia/app/data/utils/common_utils.dart';
import 'package:adat_indonesia/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/adat_list_controller.dart';

class AdatListView extends GetView<AdatListController> {
  const AdatListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adat Budaya',
          style: CommonUtils.headerStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(EConstant.largePadding.value),
        child: ListView.separated(
          itemCount: controller.models.length,
          separatorBuilder: (context, index) => SizedBox(
            height: EConstant.largePadding.value,
          ),
          itemBuilder: (context, index) {
            RaceModel model = controller.models[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.ADAT_DETAIL, arguments: model);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: ColourPalette.pastelWhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: EConstant.mediumPadding.value,
                  vertical: EConstant.smallPadding.value,
                ),
                child: Row(
                  spacing: 20,
                  children: [
                    Container(
                      height: double.infinity,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(model.imagePath),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Text(
                      model.ras.name.capitalize!,
                      style: CommonUtils.titleStyle,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

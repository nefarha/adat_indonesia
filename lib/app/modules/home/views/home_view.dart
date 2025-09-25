import 'package:adat_indonesia/app/data/enums/e_constant.dart';
import 'package:adat_indonesia/app/data/utils/asset_url.dart';
import 'package:adat_indonesia/app/data/utils/colour_palette.dart';
import 'package:adat_indonesia/app/data/utils/common_utils.dart';
import 'package:adat_indonesia/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:glass/glass.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetUrl.bgImage), fit: BoxFit.cover),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColourPalette.skyBlueWhite,
                  Colors.teal,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(EConstant.smallPadding.value),
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Adat Budaya\nIndonesia',
                    style: CommonUtils.headerStyle.copyWith(
                      color: ColourPalette.pastelWhite,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Get.toNamed(Routes.ADAT_LIST);
                    },
                    child: Center(
                        child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColourPalette.pastelWhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'MULAI',
                          style: CommonUtils.titleStyle.copyWith(),
                        ),
                      ),
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:adat_indonesia/app/data/enums/e_constant.dart';
import 'package:adat_indonesia/app/data/utils/colour_palette.dart';
import 'package:adat_indonesia/app/data/utils/common_utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/adat_detail_controller.dart';

class AdatDetailView extends GetView<AdatDetailController> {
  const AdatDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.model.ras.capitalize!,
          style: CommonUtils.headerStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: ColourPalette.pastelWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
                image: DecorationImage(
                  image: AssetImage(
                    controller.model.imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(EConstant.largePadding.value),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    controller.model.ras.capitalize!,
                    style: CommonUtils.headerStyle,
                  ),
                  Divider(),
                  Text(
                    'Sejarah',
                    style: CommonUtils.headerStyle,
                  ),
                  Text(
                    controller.model.adat,
                    style: CommonUtils.bodyStyle,
                  ),
                  Divider(),
                  Text(
                    'Ciri bahasa',
                    style: CommonUtils.headerStyle,
                  ),
                  Text(
                    controller.model.ciriBahasa,
                    style: CommonUtils.bodyStyle,
                  ),
                  Divider(),
                  Text(
                    'Contoh bahasa: ',
                    style: CommonUtils.headerStyle,
                  ),
                  if (controller.model.contohBahasa.any(
                    (element) => element.tingkat == null,
                  ))
                    ...controller.model.contohBahasa.map(
                      (e) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.teks,
                            style: CommonUtils.titleStyle,
                          ),
                          Text(
                            'arti : ${e.arti}',
                            style: CommonUtils.bodyStyle,
                          ),
                        ],
                      ),
                    )
                  else
                    ...controller.groupByTingkat().entries.map(
                      (values) {
                        final tingkat = values.key;
                        return Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$tingkat : '.capitalize!,
                              style: CommonUtils.titleStyle,
                            ),
                            ...values.value.map(
                              (e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.teks,
                                    style: CommonUtils.titleStyle,
                                  ),
                                  Text(
                                    'arti : ${e.arti}',
                                    style: CommonUtils.bodyStyle,
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

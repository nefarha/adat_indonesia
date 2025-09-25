import 'package:adat_indonesia/app/data/utils/colour_palette.dart';
import 'package:adat_indonesia/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AdatIndonesiaApp extends StatelessWidget {
  const AdatIndonesiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: adatTheme(),
    );
  }
}

ThemeData adatTheme() => ThemeData(
      appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColourPalette.pastelWhite,
      ),
      scaffoldBackgroundColor: ColourPalette.pastelWhite,
      textTheme: GoogleFonts.poppinsTextTheme(),
    );

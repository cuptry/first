// ignore_for_file: prefer_const_constructors
import 'package:averageprice_calculator/screens/home.dart';
import 'package:averageprice_calculator/screens/settings.dart';
import 'package:averageprice_calculator/screens/tansactionlist.dart';
import 'package:averageprice_calculator/utilities/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2280),
      builder: () => GetMaterialApp(
        translations: Messages(),
        fallbackLocale: const Locale('en','US'),
        locale: Get.deviceLocale,
        title: 'Averageprice Calculator',
        theme: Get.isDarkMode? ThemeData.dark(): ThemeData.light(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: ()=> StartPage()),
          GetPage(name: '/settingspage', page: ()=> SettingsPage()),
          GetPage(name: '/transactionlist', page: ()=> TansactionListPage())
        ],
      ),
    );
  }
}


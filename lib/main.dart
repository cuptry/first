import 'package:first/screens/home.dart';
import 'package:first/screens/settings.dart';
import 'package:first/utilities/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

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
        title: 'Flutter Demo',
        theme: Get.isDarkMode? ThemeData.dark(): ThemeData.light(),

        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: ()=> StartPage()),
          GetPage(name: '/settingspage', page: ()=> SettingsPage())
        ],
      ),
    );
  }
}


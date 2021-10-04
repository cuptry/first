import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class SettingsTitles extends StatelessWidget {
  SettingsTitles({required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Text(title.tr,
          style:
              TextStyle(color: Color.fromRGBO(50, 50, 93, 1), fontSize: 16.0)),
    );
  }
}

// 테마 변경
class Themechange extends StatelessWidget {
  RxBool isSwitched = Get.isDarkMode ? true.obs : false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => Switch(
          value: isSwitched.value,
          onChanged: (checked) {
            Get.changeTheme(checked ? ThemeData.dark() : ThemeData.light());
            isSwitched.value = checked;
          },
        ),
      ),
    );
  }
}

//언어 변경
class Langchange extends StatelessWidget {
  RxBool iskorea =
      Get.deviceLocale == Locale('ko', 'KR') ? false.obs : true.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => Switch(
          value: iskorea.value,
          onChanged: (checked) {
            checked ? Get.updateLocale(Locale('ko', 'KR')) : Get.updateLocale(Locale('en', 'US'));
            print(iskorea);
            iskorea.value = checked;
            print(Get.deviceLocale);
            print(iskorea);
          },
        ),
      ),
    );
  }
}

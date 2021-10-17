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
  RxBool isKorean = Get.deviceLocale == Locale('ko','KR') ? true.obs : false.obs;
  var englishLocale = Locale('en', 'US');
  var koreaLocale =Locale('ko', 'KR');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
            () => Switch(
          value: isKorean.value,
          onChanged: (checked)  {
            isKorean.value = checked;
            print(checked);
          },
        ),
      ),
    );
  }
}

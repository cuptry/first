import 'package:first/themes/settingsthemes/themechange.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("설    정".tr),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [SettingsTitles(title: '테마'),Themechange()],
              ),
              Row(
                children: [SettingsTitles(title: '언어'),Langchange()],
              ),
              Row(
                children: [SettingsTitles(title: '앱버전'),],
              ),
              Row(
                children: [SettingsTitles(title: '이용약관'),],
              ),
              Row(
                children: [SettingsTitles(title: '문의 및 의견'),],
              ),
            ],
          ),
        ),
      ),

    );
  }


}
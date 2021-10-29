import 'package:averageprice_calculator/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/themes/settingsthemes/popuplanguage.dart';
import 'package:averageprice_calculator/themes/settingsthemes/popuptheme.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColorScreen,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            color: AppColors.text,
            onPressed: () {
              Get.toNamed('/');
            },
          )
        ],
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 24, left: 24, bottom: 12),
          child: Column(children: [
            Container(
              child: SizedBox(
                width: double.infinity,
                child: FlatButton(
                  textColor: AppColors.white,
                  color: AppColors.info,
                  onPressed: null,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8),
                      child: Text("설    정".tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              letterSpacing: 5.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 28, bottom: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "기 본".tr,
                  style: TextStyle(
                      color: AppColors.text,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 2.0),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.075,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text('테마'.tr,
                                style: TextStyle(
                                    color: Color.fromRGBO(50, 50, 93, 1),
                                    fontSize: 16.0)),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 26,
                            child: Container(
                              child: RawMaterialButton(
                                elevation: 2.0,
                                fillColor: controllers.ThemeName.value,
                                child: Text('　'),
                                padding: EdgeInsets.all(4.0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Popuptheme(
                                          title: "테마",
                                        );
                                      });
                                },
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.075,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text('언어'.tr,
                                style: TextStyle(
                                    color: Color.fromRGBO(50, 50, 93, 1),
                                    fontSize: 16.0)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: FlatButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Popuplanguage(
                                        title: "언어".tr,
                                      );
                                    });
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  controllers.langueges.value,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 52, bottom: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "기 타".tr,
                  style: TextStyle(
                      color: AppColors.text,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 2.0),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text('앱버전'.tr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: FlatButton(
                                onPressed: null,
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text("1.0.0",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(50, 50, 93, 1),
                                            fontSize: 16.0))),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text('이용약관'.tr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: FlatButton(
                                onPressed: () {
                                   _launchURL("https://valueto.github.io/T&C");
                                },
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(">",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(50, 50, 93, 1),
                                            fontSize: 16.0))),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.075,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text('문의 및 의견'.tr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: FlatButton(
                                onPressed: () {
                                   _launchURL("mailto:redjoun@gmail.com");
                                },
                                child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(">",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(50, 50, 93, 1),
                                            fontSize: 16.0))),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}



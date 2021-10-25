import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class SettingsPage extends StatelessWidget {
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
                child: MaterialButton(
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
              width: MediaQuery.of(context).size.width * 0.8,
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text('테마'.tr,
                                style: TextStyle(
                                    color: Color.fromRGBO(50, 50, 93, 1),
                                    fontSize: 16.0)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 22,
                                  child: Obx(() => RawMaterialButton(
                                        child: Text('　'),
                                        elevation: 2.0,
                                        padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                        onPressed: () {
                                          // popuptheme();
                                        },
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text('언어'.tr,
                                style: TextStyle(
                                    color: Color.fromRGBO(50, 50, 93, 1),
                                    fontSize: 16.0)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            child: MaterialButton(
                              onPressed: () {
                                // popuplanguage();
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Language',
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
              width: MediaQuery.of(context).size.width * 0.8,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text('앱버전'.tr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: MaterialButton(
                                onPressed: () {},
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
                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.07,
                    //   child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //           width: MediaQuery.of(context).size.width * 0.45,
                    //           child: Text('라이센스'.tr,
                    //               style: TextStyle(
                    //                   color: Color.fromRGBO(50, 50, 93, 1),
                    //                   fontSize: 16.0)),
                    //         ),
                    //         Container(
                    //           width: MediaQuery.of(context).size.width * 0.35,
                    //           child: FlatButton(
                    //             onPressed: () {
                    //               _launchURL("https://youtube.com");
                    //             },
                    //             child: Container(
                    //                 alignment: Alignment.centerRight,
                    //                 child: Text(">",
                    //                     style: TextStyle(
                    //                         color:
                    //                             Color.fromRGBO(50, 50, 93, 1),
                    //                         fontSize: 16.0))),
                    //           ),
                    //         ),
                    //       ]),
                    // ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text('이용약관'.tr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: MaterialButton(
                                onPressed: () {
                                  // _launchURL("https://youtube.com");
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
                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.07,
                    //   child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //           width: MediaQuery.of(context).size.width * 0.45,
                    //           child: Text('앱 평가하기'.tr,
                    //               style: TextStyle(
                    //                   color: Color.fromRGBO(50, 50, 93, 1),
                    //                   fontSize: 16.0)),
                    //         ),
                    //         Container(
                    //           width: MediaQuery.of(context).size.width * 0.35,
                    //           child: FlatButton(
                    //             onPressed: () {
                    //               _launchURL("https://youtube.com");
                    //             },
                    //             child: Container(
                    //                 alignment: Alignment.centerRight,
                    //                 child: Text(">",
                    //                     style: TextStyle(
                    //                         color:
                    //                             Color.fromRGBO(50, 50, 93, 1),
                    //                         fontSize: 16.0))),
                    //           ),
                    //         ),
                    //       ]),
                    // ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Text('문의 및 의견'.tr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(50, 50, 93, 1),
                                      fontSize: 16.0)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: MaterialButton(
                                onPressed: () {
                                  // _launchURL("mailto:redjoun@gmail.com");
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

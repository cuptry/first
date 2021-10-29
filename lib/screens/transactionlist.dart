// ignore_for_file: prefer_const_constructors

import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/themes/transactionlisttheme/listresetbutton.dart';
import 'package:averageprice_calculator/themes/transactionlisttheme/transationdatatable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TansactionListPage extends StatelessWidget {
  const TansactionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColorScreen,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/');
            },
            icon: Icon(Icons.close),
            color: AppColors.text,
          )
        ],
        title: const Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
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
                        child: Text("저 장 소".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                letterSpacing: 5.0))),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                alignment: Alignment.centerRight,
                child: Container(
                  child: ListResetButton(),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: TransactionDatatable(),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

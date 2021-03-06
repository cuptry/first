import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


final controllers = Get.put(Maincontroller());
class Resetbutton{
  final Container formFieldResetButton = Container(
    child: TextButton(
      child: Text(
        "초기화".tr,
        textAlign: TextAlign.center,
        // ignore: prefer_const_constructors
        style: TextStyle(
            color:
            AppColors
                .white,
            fontSize:
            12.0,
            fontWeight:
            FontWeight
                .bold),
      ),
      onPressed: () {
        controllers.totalrows.value.clear;
       // controllers.datarowes.value = [];
        controllers.nowHavingPrice.value.clear();
        controllers.nowHavingQuantity.value.clear();
        controllers.addHavingQuantity.value.clear();
        controllers.addHavingPrice.value.clear();
        controllers.nowprice.value = '';
        controllers.nowqunatity.value = '';
        controllers.addprice.value = '';
        controllers.addqunatity.value = '';
        //  print(listrows);
      },
    ),
  );

}


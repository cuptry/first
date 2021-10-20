// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controllers = Get.put(Maincontroller());

class OutputTotalExpress extends StatelessWidget {
  OutputTotalExpress({required this.totalvalue});

  dynamic totalvalue;
//controllers.nowtotalfunction()
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('합계'.tr),
        Text(totalvalue),
      ],
    );
  }
}

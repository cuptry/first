// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controllers = Get.put(Maincontroller());

// 결과 값 타이틀 및 값 출력
class OutPutExpresses {
  final Container outputValueExpress = Container(
      child: Column(
    children: [
      //최종보유 텍스트
      Text("최 종 보 유".tr,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
            color: AppColors.text,
        ),
      ),
      SizedBox(height: 20.0),
      totalresult(
        title: "평 단 가",
        resultvalue: controllers.textwidgetsprice2(),
      ),
      totalresult(
        title: "수      량",
        resultvalue: controllers.textwidgetsprice3(),
      ),
      totalresult(
        title: "총 금 액",
        resultvalue: controllers.textwidgetsprice1(),
      ),
      Divider(
        height: 36.0,
        thickness: 1.0,
        indent: 32.0,
        endIndent: 32.0,
      ),
      SizedBox(height: 6.0),
    ],
  ));
}

//값 출력
class totalresult extends StatelessWidget {
  totalresult({required this.title, this.resultvalue});

  String title;
  var resultvalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Text(title.tr,
                      style: TextStyle(
                          color: AppColors.text,
                          fontSize: 14.0)),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: resultvalue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

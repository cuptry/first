// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

final controllers = Get.put(Maincontroller());
class OutputTotalExpress extends StatelessWidget {
  OutputTotalExpress({required this.totalvalue});
  dynamic totalvalue;

//controllers.nowtotalfunction()
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Text("총 금 액".tr,
                style: TextStyle(
                    color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.63,
            height: MediaQuery.of(context).size.height * 0.038,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: HexColor('#EDEDED'),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(totalvalue,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Color.fromRGBO(82, 95, 127, 1),
                      fontSize: 15.0),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}

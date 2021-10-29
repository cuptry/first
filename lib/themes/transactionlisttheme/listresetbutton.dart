import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controllers = Get.put(Maincontroller());
class ListResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text(
          "초기화".tr,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.text,
            fontSize: 12.0,
            // fontWeight:
            // FontWeight
            //     .bold
          ),
        ),
        onPressed: () {
          Get.dialog(
            Dialog(
              child: Column(mainAxisSize: MainAxisSize.min,
                  // To make the card compact
                  children: <Widget>[
                    Container(
                      height: 120,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        // To make the card compact
                        children: <Widget>[
                          SizedBox(height: 24.0),
                          Text(
                            '초기화하시겠습니까?'.tr,
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 14.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  controllers.totalrows.clear();
                                  controllers.nowrows.clear();
                                  controllers.addrows.clear();
                                  Get.back();
                                },
                                child: Text(
                                  "네".tr,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "아니요".tr,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}

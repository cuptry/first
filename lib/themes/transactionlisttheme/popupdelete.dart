import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:flutter/cupertino.dart';

final controllers = Get.put(Maincontroller());

class Popupdelete extends StatelessWidget {
  final List totalrowvalue, nowrowvalue, addrowvalue;
  var i;

  Popupdelete({
    required this.totalrowvalue,
    required this.nowrowvalue,
    required this.addrowvalue,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        buildCard(context),
        buildCircle(context),
        //...bottom card part,
        //...top circlular image part,
      ],
    );
  }

  Widget buildCard(BuildContext context) {
    return Positioned(
      top: 50,
      left: Consts.padding,
      right: Consts.padding,
      child: Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.avatarRadius + Consts.padding,
          left: Consts.avatarRadius + Consts.padding,
          right: Consts.avatarRadius + Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          '삭제하시겠습니까?'.tr,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 14.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // TextButton(
                            //   onPressed: () {
                            //     controllers.nowHavingPrice.value.text =
                            //         totalrowvalue[i]['averageprice']
                            //             .toString();
                            //     controllers.nowHavingQuantity.value.text =
                            //         totalrowvalue[i]['quantity'].toString();
                            //     controllers.nowprice.value = totalrowvalue[i]
                            //     ['averageprice']
                            //         .toString();
                            //     controllers.nowqunatity.value =
                            //         totalrowvalue[i]['quantity'].toString();
                            //     controllers.addHavingPrice.value.clear();
                            //     controllers.addHavingQuantity.value.clear();
                            //     controllers.addprice.value = '';
                            //     controllers.addqunatity.value = '';
                            //     Get.back();
                            //   },
                            //   child: Text(
                            //     "현재보유로 이동".tr,
                            //   ),
                            // ),
                            TextButton(
                              onPressed: () {
                                print(i);
                                controllers.totalrows.removeAt(i);
                                controllers.nowrows.removeAt(i);
                                controllers.addrows.removeAt(i);
                                Get.back();
                              },
                              child: Text(
                                "네".tr,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                "아니요".tr,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ]),
        ),
      ),
    );
  }

  Widget buildCircle(context) {
    return Positioned(
      right: 1,
      top: 50,
      child: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        radius: Consts.avatarRadius,
        child: IconButton(
          icon: Icon(Icons.close),
          color: Colors.black,
          iconSize: 14,
          splashRadius: 40,
          splashColor: Colors.deepOrange,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

class Consts {
  Consts._();
  static const double padding = 10.0;
  static const double avatarRadius = 16.0;
}

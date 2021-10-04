import 'package:first/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


final controllers = Get.put(Maincontroller());

class Resetbutton{

  final Container formFieldResetButton = Container(
    child: TextButton(
      child: Text(
        "초기화".tr,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold),
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

class SaveButton {
  final Container formFieldValueSave = Container(
    child: TextButton(
      child: Text(
        "저장".tr,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Map totalvalues = {
          'averageprice': '',
          'quantity': '',
          'price': '',
        };
        Map nowvalues = {
          'averageprice': '',
          'quantity': '',
          'price': '',
        };
        Map addvalues = {
          'averageprice': '',
          'quantity': '',
          'price': '',
        };
        totalvalues['averageprice'] =
        (controllers.resulttotalaverageprice); //최종 평단가
        totalvalues['quantity'] = (controllers.resulttotalqunatity); //최종 수량
        totalvalues['price'] = (controllers.resulttotalprice); //최종 금액
        nowvalues['averageprice'] =
            double.parse(controllers.nowprice.value); //현재 평단가
        nowvalues['quantity'] =
            double.parse(controllers.nowqunatity.value); //현재 수량
        nowvalues['price'] = (controllers.nowtotal); //현재 최종금액
        addvalues['averageprice'] =
            double.parse(controllers.addprice.value); //추가 평단가
        addvalues['quantity'] =
            double.parse(controllers.addqunatity.value); //최종 수량
        addvalues['price'] = (controllers.addtotal); //최종 금액
        controllers.totalrows.add(totalvalues);
        controllers.nowrows.add(nowvalues);
        controllers.addrows.add(addvalues);
        Get.snackbar("저장완료".tr, "저장 내역들을 보려면 터치하세요".tr,
            // icon: Icon(Icons.save_alt, color: Colors.white),
            snackPosition: SnackPosition.BOTTOM,
            borderRadius: 20,
            margin: EdgeInsets.all(10),
            duration: Duration(seconds: 2),
            isDismissible: true,
            dismissDirection: SnackDismissDirection.HORIZONTAL,
            forwardAnimationCurve: Curves.easeOutBack, onTap: (_) {
              Get.toNamed("/saved");
            });
      },
    ),
  );
}

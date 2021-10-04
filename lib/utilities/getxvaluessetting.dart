import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Maincontroller extends GetxController {

  var nowHavingPrice = TextEditingController().obs;
  var nowHavingQuantity = TextEditingController().obs;
  var addHavingPrice = TextEditingController().obs;
  var addHavingQuantity = TextEditingController().obs;
  var nowprice = ''.obs;
  var nowqunatity = ''.obs;
  var addprice = ''.obs;
  var addqunatity = ''.obs;
  var totalrows = [].obs;
  var nowrows = [].obs;
  var addrows = [].obs;

  @override
  void onClose() {
    super.onClose();
    nowHavingPrice.close();
    nowHavingQuantity.close();
    addHavingPrice.close();
    addHavingQuantity.close();
  }

  //현재 총 금액
  dynamic get nowtotal =>
      num.parse(nowprice.value) * num.parse(nowqunatity.value);

//추가 총 금액
  dynamic get addtotal =>
      num.parse(addprice.value) * num.parse(addqunatity.value);

//최종 금액 값
  dynamic get resulttotalprice =>
      (num.parse(nowprice.value) * num.parse(nowqunatity.value)) +
          (num.parse(addprice.value) * num.parse(addqunatity.value));

//최종 수량 값
  dynamic get resulttotalqunatity =>
      num.parse(nowqunatity.value) + num.parse(addqunatity.value);

//최종 평단가
  dynamic get resulttotalaverageprice =>
      resulttotalprice ~/ resulttotalqunatity;

  dynamic get resulttotalaverageprice2 =>
      resulttotalprice / resulttotalqunatity;



}
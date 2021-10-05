import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

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
  RxList<DataRow> datarowes = <DataRow>[].obs;
  final formatCurrency =
  NumberFormat.currency(symbol: '', decimalDigits: 0); //소수점 없는 가격
  final formatCurrency2 =
  NumberFormat.currency(symbol: '', decimalDigits: 10); // 소수점 있는 가격
  final formatQunatity =
  NumberFormat.currency(decimalDigits: 0, symbol: ''); //소수점 없는 수량
  final formatQunatity2 =
  NumberFormat.currency(symbol: '', decimalDigits: 10); //소수점 있는 수량

 // 재부팅되도 저장
 final box = GetStorage();
  @override
  void onInit() {
    ever(totalrows, (_) {
      box.write('totalrows', totalrows);
      print('실행');
    });
    ever(nowrows, (_) {
      box.write('nowrows', nowrows);
      print('실핼');
    });
    ever(addrows, (_) {
      box.write('addrows', addrows);
      print('실핼');
    });
  }


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

  // 최종 평단가
  textwidgetsprice2() {
    var a = Obx(()=>Text(resulttotalaverageprice2function(),
        style: TextStyle(
            color: Color.fromRGBO(82, 95, 127, 1),
            fontSize: 22.0,
            fontWeight: FontWeight.bold)));
    return a;
  }

  //최종수량
  resulttotalaverageprice2function() {
    try {
      dynamic targetvaluedecimal =
          resulttotalaverageprice2 - resulttotalaverageprice2.floorToDouble();
      dynamic targetvaluedecimaldigit10 =
      double.parse(targetvaluedecimal.toStringAsFixed(10));
      int i = 1;

      if (targetvaluedecimal == 0.0) {
        return formatCurrency.format(resulttotalaverageprice2).toString();
      } else {
        for (int i = 1; i < 11; i++) {
          double cc = 0.0;
          cc = targetvaluedecimaldigit10 * pow(10, i);

          if (cc == cc.floorToDouble()) {
            print('소수점 자리는 $i 입니다.');
            return NumberFormat.currency(symbol: '', decimalDigits: i)
                .format(resulttotalaverageprice2);
          }
        }
      }
    } catch (e) {
      print(e);
      return '';
    }
  }



// 최종 수량
  textwidgetsprice3() {
    var a = Obx(()=>Text(resulttotalqunatityfunction(),
        style: TextStyle(
            color: Color.fromRGBO(82, 95, 127, 1),
            fontSize: 22.0,
            fontWeight: FontWeight.bold)));
    return a;


  }

  //최종수량
  resulttotalqunatityfunction() {
    try {
      dynamic targetvaluedecimal =
          resulttotalqunatity - resulttotalqunatity.floorToDouble();
      dynamic targetvaluedecimaldigit10 =
      double.parse(targetvaluedecimal.toStringAsFixed(10));
      int i = 1;

      if (targetvaluedecimal == 0.0) {
        return formatCurrency.format(resulttotalqunatity).toString();
      } else {
        for (int i = 1; i < 11; i++) {
          double cc = 0.0;
          cc = targetvaluedecimaldigit10 * pow(10, i);

          if (cc == cc.floorToDouble()) {
            print('소수점 자리는 $i 입니다.');
            return NumberFormat.currency(symbol: '', decimalDigits: i)
                .format(resulttotalqunatity);
          }
        }
      }
    } catch (e) {
      print(e);
      return '';
    }
  }

// 최종 금액
  textwidgetsprice1() {
    var a = Obx(()=>Text(resulttotalpricefunction(),
        style: TextStyle(
            color: Color.fromRGBO(82, 95, 127, 1),
            fontSize: 22.0,
            fontWeight: FontWeight.bold)));
    return a;
  }


  //최종금액
  resulttotalpricefunction() {
    try {
      dynamic targetvaluedecimal =
          resulttotalprice - resulttotalprice.floorToDouble();
      dynamic targetvaluedecimaldigit10 =
      double.parse(targetvaluedecimal.toStringAsFixed(10));
      int i = 1;

      if (targetvaluedecimal == 0.0) {
        return formatCurrency.format(resulttotalprice).toString();
      } else {
        for (int i = 1; i < 11; i++) {
          double cc = 0.0;
          cc = targetvaluedecimaldigit10 * pow(10, i);

          if (cc == cc.floorToDouble()) {
            print('소수점 자리는 $i 입니다.');
            return NumberFormat.currency(symbol: '', decimalDigits: i)
                .format(resulttotalprice);
          }
        }
      }
    } catch (e) {
      print(e);
      return '';
    }
  }

  //현재금액
  nowtotalfunction() {
    try {
      dynamic targetvaluedecimal =
          nowtotal - nowtotal.floorToDouble();
      dynamic targetvaluedecimaldigit10 =
      double.parse(targetvaluedecimal.toStringAsFixed(10));
      int i = 1;

      if (targetvaluedecimal == 0.0) {
        return formatCurrency.format(nowtotal).toString();
      } else {
        for (int i = 1; i < 11; i++) {
          double cc = 0.0;
          cc = targetvaluedecimaldigit10 * pow(10, i);

          if (cc == cc.floorToDouble()) {
            print('소수점 자리는 $i 입니다.');
            return NumberFormat.currency(symbol: '', decimalDigits: i)
                .format(nowtotal);
          }
        }
      }
    } catch (e) {
      print(e);
      return '';
    }
  }
  //추가금액
  addtotalfunction() {
    try {
      dynamic targetvaluedecimal =
          addtotal - addtotal.floorToDouble();
      dynamic targetvaluedecimaldigit10 =
      double.parse(targetvaluedecimal.toStringAsFixed(10));
      int i = 1;

      if (targetvaluedecimal == 0.0) {
        return formatCurrency.format(addtotal).toString();
      } else {
        for (int i = 1; i < 11; i++) {
          double cc = 0.0;
          cc = targetvaluedecimaldigit10 * pow(10, i);

          if (cc == cc.floorToDouble()) {
            print('소수점 자리는 $i 입니다.');
            return NumberFormat.currency(symbol: '', decimalDigits: i)
                .format(addtotal);
          }
        }
      }
    } catch (e) {
      print(e);
      return '';
    }
  }




}
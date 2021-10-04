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

}
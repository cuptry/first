import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'outputtotalexpress.dart';

final controllers = Get.put(Maincontroller());

class Inputexpresses {
  final Container inputValueExpress = Container(
      child: Column(
    children: [
      BigeertotalFormFieldtitle(
          titleimage: Icons.arrow_right_rounded, title: '현재보유'),
      Inputformfields(
        formfieldtitle: '평  단  가',
        textcontoller: controllers.nowHavingPrice,
        textstring: controllers.nowprice,
      ),
      Inputformfields(
        formfieldtitle: '수        량',
        textcontoller: controllers.nowHavingQuantity,
        textstring: controllers.nowqunatity,
      ),
      OutputTotalExpress(
        totalvalue: controllers.nowtotalfunction(),
      ),
      SizedBox(
        height: 18,
      ),
      BigeertotalFormFieldtitle(
          titleimage: Icons.arrow_right_rounded, title: '추가매수'),
      Inputformfields(
        formfieldtitle: '평  단  가',
        textcontoller: controllers.addHavingPrice,
        textstring: controllers.addprice,
      ),
      Inputformfields(
        formfieldtitle: '수        량',
        textcontoller: controllers.addHavingQuantity,
        textstring: controllers.addqunatity,
      ),
      OutputTotalExpress(
        totalvalue: controllers.addtotalfunction(),
      ),
      SizedBox(
        height: 14,
      ),
    ],
  ));
}

//enum OrderType{BUY, SELL}
// 폼필드 타이틀
class BigeertotalFormFieldtitle extends StatelessWidget {
  BigeertotalFormFieldtitle({required this.titleimage, required this.title});

  final IconData titleimage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.03,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            titleimage,
            size: 14.0,
            color: AppColors.initial,
          ),
          Text(title.tr,
              style: TextStyle(
                  color: Color.fromRGBO(50, 50, 93, 1),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

// 텍스트 폼 필드
class Inputformfields extends StatelessWidget {
  Inputformfields(
      {required this.formfieldtitle,
      required this.textcontoller,
      required this.textstring});

  String formfieldtitle;
  RxString textstring;
  Rx<TextEditingController> textcontoller;

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.045,
            child: Text(formfieldtitle.tr,
                style: TextStyle(
                    color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.045,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Obx(
                () => Container(
                  width: MediaQuery.of(context).size.width * 0.58,
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    controller: textcontoller.value,
                    onChanged: (changedvalues) {
                      if (changedvalues.length < 1) {
                        textcontoller.value.clear();
                        textstring.value = '0';
                        print('reset');
                      }
                      textstring.value = (changedvalues).replaceAll(',', '');
                      print(textcontoller);
                      print(textstring.value);
                    },
                    keyboardType: TextInputType.numberWithOptions(
                        signed: true, decimal: true),
                    style: TextStyle(
                        color: Color.fromRGBO(82, 95, 127, 1), fontSize: 15.0),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

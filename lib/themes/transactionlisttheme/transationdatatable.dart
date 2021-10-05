import 'package:first/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

final controllers = Get.put(Maincontroller());

class TransactionDatatable extends StatelessWidget {
  const TransactionDatatable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => DataTable(
          headingRowHeight: 40,
          dataRowHeight: 75,
          showCheckboxColumn: false,
          dataTextStyle:
              TextStyle(color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0),
          columnSpacing: 15,
          columns: [
            DataColumn(
              label: Container(
                // width: MediaQuery.of(context).size.width * 0.05,
                child: Text('#',
                    style: TextStyle(
                        color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
              ),
            ),
            DataColumn(
              label: Container(
                // width: MediaQuery.of(context).size.width * 0.1,
                child: Text('구 분'.tr,
                    style: TextStyle(
                        color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
              ),
            ),
            DataColumn(
              label: Container(
                // width: MediaQuery.of(context).size.width * 0.3,
                child: Text('평 단 가'.tr,
                    style: TextStyle(
                        color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
              ),
            ),
            DataColumn(
              label: Container(
                // width: MediaQuery.of(context).size.width * 0.25,
                child: Text('수 량'.tr,
                    style: TextStyle(
                        color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
              ),
            ),
            DataColumn(
              label: Container(
                // width: MediaQuery.of(context).size.width * 0.4,
                child: Text('총 금 액'.tr,
                    style: TextStyle(
                        color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0)),
              ),
            ),
          ],
          rows: datarows(
              controllers.totalrows, controllers.nowrows, controllers.addrows),
        ),
      ),
    );
  }
}


//DataTable 값 row

datarows(List totalrowvalue, List nowrowvalue, List addrowvalue) {

  controllers.datarowes.value = [];
  String aa = '';
  String bb = '';
  String cc = '현 재'.tr + '\n' + '추 가'.tr + '\n' + '최 종';
  for (var i = 0; i < totalrowvalue.length; i++) {
    List<DataCell> cells = [];

    cells.add(DataCell(Text('${i + 1}')));
    cells.add(DataCell(Text(cc)));
    for (var j in totalrowvalue[i].keys) {
      if (j == 'averageprice' || j == 'price') {
        aa =
            '${controllers.formatCurrency.format(nowrowvalue[i][j])}\n${controllers.formatCurrency.format(addrowvalue[i][j])}\n${controllers.formatCurrency.format(totalrowvalue[i][j])}';
        cells.add(DataCell(Text('$aa')));
      } else {
        bb =
            '${controllers.formatQunatity.format(nowrowvalue[i][j])}\n${controllers.formatQunatity.format(addrowvalue[i][j])}\n${controllers.formatQunatity.format(totalrowvalue[i][j])}';
        cells.add(DataCell(Text('$bb')));
      }
    }
    controllers.datarowes.add(DataRow(
        onSelectChanged: (choicevalue) {
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
                            '선택하세요'.tr,
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 14.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  controllers.nowHavingPrice.value.text =
                                      totalrowvalue[i]['averageprice']
                                          .toString();
                                  controllers.nowHavingQuantity.value.text =
                                      totalrowvalue[i]['quantity'].toString();
                                  controllers.nowprice.value = totalrowvalue[i]
                                          ['averageprice']
                                      .toString();
                                  controllers.nowqunatity.value =
                                      totalrowvalue[i]['quantity'].toString();
                                  controllers.addHavingPrice.value.clear();
                                  controllers.addHavingQuantity.value.clear();
                                  controllers.addprice.value = '';
                                  controllers.addqunatity.value = '';

                                  Get.back();
                                },
                                child: Text(
                                  "현재보유로 이동".tr,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  print(i);
                                  controllers.totalrows.removeAt(i);
                                  controllers.nowrows.removeAt(i);
                                  controllers.addrows.removeAt(i);
                                  Get.back();
                                },
                                child: Text(
                                  "삭제".tr,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "선택 취소".tr,
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
        cells: cells));
  }
  return controllers.datarowes;
}

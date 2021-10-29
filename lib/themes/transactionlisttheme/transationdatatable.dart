import 'package:averageprice_calculator/themes/transactionlisttheme/popupdelete.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controllers = Get.put(Maincontroller());

class TransactionDatatable extends StatelessWidget {
  const TransactionDatatable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Obx(
            () => DataTable(
              headingRowHeight: 30,
              dataRowHeight: 74,
              showCheckboxColumn: false,
              dataTextStyle: TextStyle(
                  color: Color.fromRGBO(50, 50, 93, 1), fontSize: 14.0),
              columnSpacing: 18,
              columns: [
                DataColumn(
                  label: Container(
                    child: Text('#',
                        style: TextStyle(
                            color: Color.fromRGBO(50, 50, 93, 1),
                            fontSize: 14.0)),
                  ),
                ),
                DataColumn(
                  label: Container(
                    child: Text('구 분'.tr,
                        style: TextStyle(
                            color: Color.fromRGBO(50, 50, 93, 1),
                            fontSize: 14.0)),
                  ),
                ),
                DataColumn(
                  label: Container(
                    child: Text('평 단 가'.tr,
                        style: TextStyle(
                            color: Color.fromRGBO(50, 50, 93, 1),
                            fontSize: 14.0)),
                  ),
                ),
                DataColumn(
                  label: Container(
                    child: Text('수 량'.tr,
                        style: TextStyle(
                            color: Color.fromRGBO(50, 50, 93, 1),
                            fontSize: 14.0)),
                  ),
                ),
                DataColumn(
                  label: Container(
                    child: Text('총 금 액'.tr,
                        style: TextStyle(
                            color: Color.fromRGBO(50, 50, 93, 1),
                            fontSize: 14.0)),
                  ),
                ),
              ],
              rows: datarows(controllers.totalrows, controllers.nowrows,
                  controllers.addrows),
            ),
          ),
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
  String cc = '현 재'.tr + '\n' + '추 가'.tr + '\n' + '최 종'.tr;
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Consts.padding),
              ),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              child: Popupdelete(
                nowrowvalue: [],
                addrowvalue: [],
                totalrowvalue: [],
              ),
            ),
          );
        },
        cells: cells));
  }
  return controllers.datarowes;
}

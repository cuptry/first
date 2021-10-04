import 'package:first/themes/inputexpresses.dart';
import 'package:first/themes/themes.dart';
import 'package:first/utilities/getxadmobtool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  Getxadmobtool c = Get.put(Getxadmobtool());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // 값 표출 및 출력
              OutPutExpresses().outputValueExpress,
              Inputexpresses().inputValueExpress,

            ],
          ),
        ),
      ),
    );
  }
}


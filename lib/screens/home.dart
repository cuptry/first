// ignore_for_file: prefer_const_constructors

import 'package:first/themes/homethemes/inputexpresses.dart';
import 'package:first/themes/homethemes/resetbutton.dart';
import 'package:first/themes/homethemes/outputexpresses.dart';
import 'package:first/themes/homethemes/savebutton.dart';
import 'package:first/utilities/getxadmobtool.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  Getxadmobtool c = Get.put(Getxadmobtool());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){ Get.toNamed('/settingspage');}, icon: Icon(Icons.settings)),
        actions: [IconButton(onPressed: (){Get.toNamed('/transactionlist');}, icon: Icon(Icons.archive))],
        title: const Text('Testing'),
        
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // 값 표출 및 출력
              OutPutExpresses().outputValueExpress,
              Inputexpresses().inputValueExpress,
              Resetbutton().formFieldResetButton,
              SaveButton().formFieldValueSave,
              //Container(child: c.adWidget),

            ],
          ),
        ),
      ),
    );
  }
}


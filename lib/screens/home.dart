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
      body: Center(
        child:c.adWidget,


      ),
    );
  }
}

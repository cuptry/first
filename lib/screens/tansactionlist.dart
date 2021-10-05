// ignore_for_file: prefer_const_constructors

import 'package:first/themes/transactionlisttheme/listresetbutton.dart';
import 'package:first/themes/transactionlisttheme/transactiontitle.dart';
import 'package:first/themes/transactionlisttheme/transationdatatable.dart';
import 'package:flutter/material.dart';

class TansactionListPage extends StatelessWidget {
  const TansactionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transactiontitle(transactiontitle: "저 장 소"),
      ),
      body: SingleChildScrollView(
        child: Center(

          child: Column(children: [
            ListResetButton(),
            TransactionDatatable(),
          ],),
        ),
      ),
    );
  }
}

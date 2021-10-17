import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Transactiontitle extends StatelessWidget {
  Transactiontitle({required this.transactiontitle});
  String transactiontitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Text(transactiontitle.tr,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
              letterSpacing: 5.0)),
    );
  }
}

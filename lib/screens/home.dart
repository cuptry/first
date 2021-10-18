// ignore_for_file: prefer_const_constructors
import 'package:averageprice_calculator/constants/Theme.dart';
import 'package:averageprice_calculator/themes/homethemes/inputexpresses.dart';
import 'package:averageprice_calculator/themes/homethemes/resetbutton.dart';
import 'package:averageprice_calculator/themes/homethemes/outputexpresses.dart';
import 'package:averageprice_calculator/themes/homethemes/savebutton.dart';
import 'package:averageprice_calculator/utilities/getxadmobtool.dart';
import 'package:averageprice_calculator/utilities/getxvaluessetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Getxadmobtool c = Get.put(Getxadmobtool());
final controllers = Get.put(Maincontroller());

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/img/profile-screen-bg.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.toNamed('/settingspage');
                },
                icon: Icon(Icons.settings)),
            actions: [
              IconButton(
                  onPressed: () {
                    Get.toNamed('/transactionlist');
                  },
                  icon: Icon(Icons.archive))
            ],
            title: const Text(''),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          bottomNavigationBar: Container(
              height: 50.0,
              color: Colors.white,
              child: c.adContainer),
          body: SingleChildScrollView(
            child: Stack(children: <Widget>[
              SafeArea(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Stack(children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.825,
                                        padding: const EdgeInsets.only(
                                            top: 34.0, bottom: 20.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(children: [
                                                  OutPutExpresses()
                                                      .outputValueExpress,
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 6,
                                                            horizontal: 16),
                                                    child: Column(children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.8,
                                                        child: Column(
                                                          children: [
                                                            Inputexpresses()
                                                                .inputValueExpress,
                                                          ],
                                                        ),
                                                      ),
                                                    ]),
                                                  ),
                                                  Container(
                                                    // height: MediaQuery.of(context)
                                                    //         .size
                                                    //         .height *
                                                    //     0.0,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0,
                                                            right: 25.0,
                                                            left: 25.0),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            76,
                                                                        height:
                                                                            32,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              AppColors.info,
                                                                          borderRadius:
                                                                              BorderRadius.circular(3.0),
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color: Colors.grey.withOpacity(0.3),
                                                                              spreadRadius: 1,
                                                                              blurRadius: 7,
                                                                              offset: Offset(0, 3), // changes position of shadow
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        child: Resetbutton()
                                                                            .formFieldResetButton,
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            90.0,
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            76,
                                                                        height:
                                                                            32,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              AppColors.initial,
                                                                          borderRadius:
                                                                              BorderRadius.circular(3.0),
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color: Colors.grey.withOpacity(0.3),
                                                                              spreadRadius: 1,
                                                                              blurRadius: 7,
                                                                              offset: Offset(0, 3), // changes position of shadow
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        child: SaveButton()
                                                                            .formFieldValueSave,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ]),
                                                          ),
                                                        ]),
                                                  ),
                                                ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ]),
                              ]),
                        ),
                      ]),
                ),
              ),
            ]),
          ),
        ));
  }
}

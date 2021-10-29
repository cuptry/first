import 'package:averageprice_calculator/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Popuptheme extends StatelessWidget {
  var title;

  Popuptheme({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        buildCard(context),
        buildCircle(context),
        //...bottom card part,
        //...top circlular image part,
      ],
    );
  }

  Widget buildCard(BuildContext context) {
    return Positioned(
      top: 50,
      left: Consts.padding,
      right: Consts.padding * 2,
      child: Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.avatarRadius + Consts.padding,
          left: Consts.avatarRadius + Consts.padding,
          right: Consts.avatarRadius + Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child:Column(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min, // To make the card compact
                  children: <Widget>[
                    Text(
                      '테마'.tr,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 5.0),
                    ),
                    SizedBox(height: 34.0),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              margin: EdgeInsets.all(10),
                              child: RawMaterialButton(
                                elevation: 2.0,
                                fillColor: Colors.orange,
                                child: Text('　'),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  controllers.ThemeImage.value = 'assets/img/profile-screen-bg_orange.png';
                                  controllers.ThemeName.value = Colors.orange;
                                  Get.toNamed("/home");
                                },
                              ),
                            ),
                            Container(
                              width: 30,
                              margin: EdgeInsets.all(10),
                              child: RawMaterialButton(
                                elevation: 2.0,
                                fillColor: Colors.green, // Green
                                child: Text('　'),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  controllers.ThemeImage.value = 'assets/img/profile-screen-bg_green.png';
                                  controllers.ThemeName.value = Colors.green;
                                  Get.toNamed("/home");
                                },
                              ),
                            ),
                            Container(
                              width: 30,
                              margin: EdgeInsets.all(10),
                              child: RawMaterialButton(
                                elevation: 2.0,
                                fillColor: Colors.blue,
                                child: Text('　'),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  controllers.ThemeImage.value = 'assets/img/profile-screen-bg.png';
                                  controllers.ThemeName.value = Colors.blue;
                                  Get.toNamed("/home");
                                },
                              ),
                            ),
                          ]),
                    ),
                  ]),
              Column(
                  mainAxisSize: MainAxisSize.min, // To make the card compact
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              margin: EdgeInsets.all(10),
                              child: RawMaterialButton(
                                elevation: 2.0,
                                fillColor: Colors.purple,
                                child: Text('　'),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  controllers.ThemeImage.value = 'assets/img/profile-screen-bg_purple.png';
                                  controllers.ThemeName.value = Colors.purple;
                                  Get.toNamed("/home");
                                },
                              ),
                            ),
                            Container(
                              width: 30,
                              margin: EdgeInsets.all(10),
                              child: RawMaterialButton(
                                elevation: 2.0,
                                fillColor: Colors.grey,
                                child: Text('　'),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                onPressed: () {
                                  controllers.ThemeImage.value = 'assets/img/profile-screen-bg_grey.png';
                                  controllers.ThemeName.value = Colors.grey;
                                  Get.toNamed("/home");
                                },
                              ),
                            ),
                          ]),
                    ),
                  ]),
              SizedBox(height: 14.0),
            ]),
      ),
    );
  }

  Widget buildCircle(context) {
    return Positioned(
      right: 16,
      top: 50,
      child: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        radius: Consts.avatarRadius,
        child: IconButton(
          icon: Icon(Icons.close),
          color: Colors.black,
          iconSize: 14,
          splashRadius: 40,
          splashColor: Colors.deepOrange,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}

class Consts {
  Consts._();
  static const double padding = 16.0;
  static const double avatarRadius = 16.0;
}
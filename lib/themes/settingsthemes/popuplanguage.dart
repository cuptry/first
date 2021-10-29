import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popuplanguage extends StatelessWidget {
  var title, languagestitle;

  Popuplanguage({
    required this.title,
    required this.languagestitle,
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
        child: Container(
          child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // To make the card compact
              children: <Widget>[
                Text(
                  '언 어',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5.0),
                ),
                SizedBox(height: 34.0),
                Container(
                  height: 130,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('영어', textAlign: TextAlign.center),
                        onTap: () {

                        },
                      ),
                      SizedBox(height: 12.0),
                      ListTile(
                        title: Text('한국어', textAlign: TextAlign.center),
                        onTap: () {

                        },
                      ),
                    ],
                  ),
                ),
              ]),
        ),
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

// //언어 교체
// void changeLanguage(var param1, var param2) {
//   var locale = Locale(param1, param2);
//   Get.updateLocale(locale);
// }

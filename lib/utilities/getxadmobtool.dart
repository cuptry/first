import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Getxadmobtool extends GetxController{
  Container? adContainer;


  @override
  void onInit(){
    BannerAd anchoredBanner = BannerAd(
      size: AdSize.banner,
      adUnitId: BannerAd.testAdUnitId,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    )..load();
    final adWidget = AdWidget(ad: anchoredBanner);
    adContainer = Container(
      alignment: Alignment.center,
      child: adWidget,
      width: anchoredBanner.size.width.toDouble(),
      height: anchoredBanner.size.height.toDouble(),
    );
  }

}
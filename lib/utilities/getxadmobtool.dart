import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Getxadmobtool extends GetxController{

  AdWidget? adWidget;

  @override
  void onInit(){
    BannerAd anchoredBanner = BannerAd(
      size: AdSize.banner,
      adUnitId: BannerAd.testAdUnitId,
      request: const AdRequest(),
      listener: const BannerAdListener(),
    )..load();
    adWidget = AdWidget(ad: anchoredBanner);
  }

}
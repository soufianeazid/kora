import 'dart:io';

class AdHelper {
  //static String get bannerAdUnitId {
  //  if (Platform.isAndroid) {
  //    return 'ca-app-pub-2637908641885913/9181752925';
  //  } else if (Platform.isIOS) {
  //    return 'ca-app-pub-2637908641885913/3164522372';
  //  } else {
  //    throw UnsupportedError("unsupported Platform");
  //  }
  //}

  static String get nativeAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2637908641885913/3711317288';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2637908641885913/4864616850';
    } else {
      throw UnsupportedError("unsupported Platform");
    }
  }

  //static String get interstitialAdUnitId {
  //  if (Platform.isAndroid) {
  //    return 'ca-app-pub-2637908641885913/2964856609';
  //  } else if (Platform.isIOS) {
  //    return 'ca-app-pub-2637908641885913/2972950688';
  //  } else {
  //    throw UnsupportedError("unsupported Platform");
  //  }
  //}
}

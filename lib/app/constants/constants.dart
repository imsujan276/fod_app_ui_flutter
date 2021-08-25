import 'package:flutter_screenutil/flutter_screenutil.dart';

const String APP_NAME = 'Food Delivery App';

class Constants {
  /// tablet view breakpoint i.e. 768
  static const double kTabletBreakpoint = 768.0;

  static const double _defaultFontSize = 16;
  static const double _defaultPadding = 10;
  static const double _defaultmargin = 10;

  ///default 16
  static double get defaultFontSize => _defaultFontSize.sp;

  ///default 10
  static double get defaultPadding => _defaultPadding.sp;

  ///default 10
  static double get defaultmargin => _defaultmargin.sp;
}

///data for splash screens
List<Map<String, String>> splashData = [
  {
    "title": "Find Food You Love",
    "text":
        "Discover the best food from over 1,000 \n resturants and fast delivery to your \n doorstep",
    "image": "assets/images/splash_1.png"
  },
  {
    "title": "Fast Delivery",
    "text": "Fast food delivery to your home, office \nwherever you are",
    "image": "assets/images/splash_2.png"
  },
  {
    "title": "Live Tracking",
    "text":
        "Real time tracking of your food on the\n app once you placed order",
    "image": "assets/images/splash_3.png"
  },
];

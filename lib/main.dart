import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/constants/constants.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/themeService.dart';
import 'app/theme/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            print(orientation);
            return ScreenUtilInit(
              designSize: (orientation == Orientation.landscape ||
                      constraints.maxWidth > Constants.kTabletBreakpoint)
                  ? Size(690, 360) // tablet design size
                  : Size(360, 690), // mobile design size
              builder: () {
                return GetMaterialApp(
                  title: APP_NAME,
                  debugShowCheckedModeBanner: false,
                  theme: Themes.light,
                  themeMode: ThemeService().getThemeMode(),
                  initialRoute: AppPages.INITIAL,
                  getPages: AppPages.routes,
                  enableLog: true,

                  // logWriterCallback: Logger.write,
                  // initialBinding: InitialBinding(),
                  // locale: TranslationService.locale,
                  // fallbackLocale: TranslationService.fallbackLocale,
                  // translations: TranslationService(),
                );
              },
            );
          },
        );
      },
    );
  }
}

  // GetMaterialApp(
  //       title: "Application",
  //       initialRoute: AppPages.INITIAL,
  //       getPages: AppPages.routes,
  //     ),
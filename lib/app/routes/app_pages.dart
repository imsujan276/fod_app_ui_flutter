import 'package:get/get.dart';

import 'package:food_delivery/app/modules/home/bindings/home_binding.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';
import 'package:food_delivery/app/modules/login/bindings/three_binding.dart';
import 'package:food_delivery/app/modules/login/views/three_view.dart';
import 'package:food_delivery/app/modules/menupage/bindings/menupage_binding.dart';
import 'package:food_delivery/app/modules/menupage/views/menupage_view.dart';
import 'package:food_delivery/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:food_delivery/app/modules/onboarding/views/onboarding_view.dart';
import 'package:food_delivery/app/modules/one/bindings/one_binding.dart';
import 'package:food_delivery/app/modules/one/views/one_view.dart';
import 'package:food_delivery/app/modules/reset_password/bindings/reset_password_binding.dart';
import 'package:food_delivery/app/modules/reset_password/views/reset_password_view.dart';
import 'package:food_delivery/app/modules/signup/bindings/four_binding.dart';
import 'package:food_delivery/app/modules/signup/views/four_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONE,
      page: () => OneView(),
      binding: OneBinding(),
    ),
    GetPage(
      name: _Paths.THREE,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FOUR,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.MENUPAGE,
      page: () => MenupageView(),
      binding: MenupageBinding(),
    ),
  ];
}

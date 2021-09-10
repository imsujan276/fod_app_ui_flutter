import 'package:get/get.dart';

import 'package:food_delivery/app/data/models/categoryItem.dart';
import 'package:food_delivery/app/modules/about/bindings/about_binding.dart';
import 'package:food_delivery/app/modules/about/views/about_view.dart';
import 'package:food_delivery/app/modules/cart/bindings/cart_binding.dart';
import 'package:food_delivery/app/modules/cart/views/cart_view.dart';
import 'package:food_delivery/app/modules/category/bindings/category_binding.dart';
import 'package:food_delivery/app/modules/category/views/category_view.dart';
import 'package:food_delivery/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:food_delivery/app/modules/checkout/views/checkout_view.dart';
import 'package:food_delivery/app/modules/detail/bindings/detail_binding.dart';
import 'package:food_delivery/app/modules/detail/views/detail_view.dart';
import 'package:food_delivery/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:food_delivery/app/modules/homepage/views/homepage_view.dart';
import 'package:food_delivery/app/modules/inbox/bindings/inbox_binding.dart';
import 'package:food_delivery/app/modules/inbox/views/inbox_view.dart';
import 'package:food_delivery/app/modules/landing/bindings/home_binding.dart';
import 'package:food_delivery/app/modules/landing/views/landing_view.dart';
import 'package:food_delivery/app/modules/login/bindings/three_binding.dart';
import 'package:food_delivery/app/modules/login/views/login.dart';
import 'package:food_delivery/app/modules/menu/bindings/menu_binding.dart';
import 'package:food_delivery/app/modules/menu/views/menu_view.dart';
import 'package:food_delivery/app/modules/menupage/bindings/menupage_binding.dart';
import 'package:food_delivery/app/modules/menupage/views/menupage_view.dart';
import 'package:food_delivery/app/modules/more_options/bindings/more_options_binding.dart';
import 'package:food_delivery/app/modules/more_options/views/more_options_view.dart';
import 'package:food_delivery/app/modules/notification/bindings/notification_binding.dart';
import 'package:food_delivery/app/modules/notification/views/notification_view.dart';
import 'package:food_delivery/app/modules/offers/bindings/offers_binding.dart';
import 'package:food_delivery/app/modules/offers/views/offers_view.dart';
import 'package:food_delivery/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:food_delivery/app/modules/onboarding/views/onboarding_view.dart';
import 'package:food_delivery/app/modules/one/bindings/one_binding.dart';
import 'package:food_delivery/app/modules/one/views/one_view.dart';
import 'package:food_delivery/app/modules/paymentdetail/bindings/paymentdetail_binding.dart';
import 'package:food_delivery/app/modules/paymentdetail/views/paymentdetail_view.dart';
import 'package:food_delivery/app/modules/profile/bindings/profile_binding.dart';
import 'package:food_delivery/app/modules/profile/views/profile_view.dart';
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
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
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
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: _Paths.OFFERS,
      page: () => OffersView(),
      binding: OffersBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(
        category: categoryData[0].name,
      ),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.MORE_OPTIONS,
      page: () => MoreOptionsView(),
      binding: MoreOptionsBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTDETAIL,
      page: () => PaymentdetailView(),
      binding: PaymentdetailBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.INBOX,
      page: () => InboxView(),
      binding: InboxBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
  ];
}

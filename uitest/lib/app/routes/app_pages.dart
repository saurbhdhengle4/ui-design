// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import 'package:uitest/app/modules/home/bindings/home_binding.dart';
import 'package:uitest/app/modules/home/views/home_view.dart';
import 'package:uitest/app/modules/login/views/login_view.dart';
import 'package:uitest/app/modules/payment/bindings/payment_binding.dart';
import 'package:uitest/app/modules/payment/views/payment_view.dart';

import '../modules/login/bindings/login_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
      transition: Transition.leftToRight,
    ),
  ];
}

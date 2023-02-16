import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:smart_feeding/presentation/pages/login/login_view.dart';
import 'package:smart_feeding/presentation/pages/onboarding/onboarding_view.dart';
import 'package:smart_feeding/presentation/pages/splash/view.dart';

List<GetPage> appRoutes() => [
  GetPage(
    name: '/splash',
    page: () => SplashPage(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 100),
  ),
  GetPage(
    name: '/onboarding',
    page: () => OnboardingPage(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/login',
    page: () => const LoginPage(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 100),
  ),
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    if (kDebugMode) {
      print(page?.name);
    }
    return super.onPageCalled(page);
  }
}
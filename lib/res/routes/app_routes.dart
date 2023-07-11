import 'package:get/get.dart';
import 'package:getx_crash_course/res/routes/routes_name.dart';
import 'package:getx_crash_course/view/height_width/height_width_view.dart';
import 'package:getx_crash_course/view/home_screen.dart';
import 'package:getx_crash_course/view/navigation_routes/routes_navigation_view.dart';
import 'package:getx_crash_course/view/navigation_routes/screen_two.dart';
import 'package:getx_crash_course/view/splash/splash_screen.dart';

class AppRoutes{

static List<GetPage> appRouts=[

  GetPage(
    name: RoutesName.splashScreen,
    page: () => SplashScreen(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: RoutesName.homeScreen,
    page: () => const HomeScreen(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: RoutesName.routesNavigation,
    page: () =>const RoutesNavigationView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: RoutesName.screenTwo,
    page: () =>const ScreenTwo(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 250),
  ),
  GetPage(
    name: RoutesName.heightWidthView,
    page: () =>const HeightWidthView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 250),
  ),

];


}
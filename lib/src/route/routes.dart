
import "package:get/get.dart";
import 'package:menu/src/constant/page.dart';
import 'package:menu/src/view/auth/login_1.dart';
import 'package:menu/src/view/auth/login_2.dart';
import 'package:menu/src/view/auth/login_3.dart';
import 'package:menu/src/view/auth/login_4.dart';
import 'package:menu/src/view/auth/login_5.dart';
import 'package:menu/src/view/auth/login_6.dart';
import 'package:menu/src/view/auth/login_7.dart';
import 'package:menu/src/view/auth/login_pages.dart';




class Routes {
  static final route = [

    GetPage(
        name: RouteConstant.LOGINPAGES,
        page: () => const LoginPages(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),

    GetPage(
        name: RouteConstant.LOGIN1,
        page: () => const LoginFirst(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),


    GetPage(
        name: RouteConstant.LOGIN2,
        page: () => const LoginSecond(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),

    GetPage(
        name: RouteConstant.LOGIN3,
        page: () => const LoginThird(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),

    GetPage(
        name: RouteConstant.LOGIN4,
        page: () => const LoginFourth(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),

    GetPage(
        name: RouteConstant.LOGIN5,
        page: () => const LoginFifth(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),

    GetPage(
        name: RouteConstant.LOGIN6,
        page: () => const LoginSixth(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),

    GetPage(
        name: RouteConstant.LOGIN7,
        page: () => const LoginSeventh(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 200)
    ),
  ];
}
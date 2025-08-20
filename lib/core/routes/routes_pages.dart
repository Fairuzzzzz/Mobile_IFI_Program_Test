import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/modules/home_screen/ui/view/home_screen.dart';
import 'package:mobile_ifi_app/modules/login_screen/ui/view/login_screen.dart';
import 'package:mobile_ifi_app/modules/main_screen/ui/view/mainscreen.dart';

class RoutesPages {
  static var list = [
    GetPage(name: Routes.login, page: () => LoginScreen()),
    GetPage(name: Routes.home, page: () => HomeScreen()),
    GetPage(name: Routes.main, page: () => Mainscreen()),
  ];
}

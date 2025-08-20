import 'package:get/get.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/modules/login_screen/ui/view/login_screen.dart';

class RoutesPages {
  static var list = [GetPage(name: Routes.login, page: () => LoginScreen())];
}

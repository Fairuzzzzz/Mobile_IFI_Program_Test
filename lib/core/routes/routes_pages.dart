import 'package:get/get.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/modules/history_screen/ui/view/history_screen.dart';
import 'package:mobile_ifi_app/modules/home_screen/ui/view/home_screen.dart';
import 'package:mobile_ifi_app/modules/login_screen/ui/view/login_screen.dart';
import 'package:mobile_ifi_app/modules/main_screen/ui/view/mainscreen.dart';
import 'package:mobile_ifi_app/modules/profile_screen/ui/view/edit_profile_screen.dart';
import 'package:mobile_ifi_app/modules/profile_screen/ui/view/profile_screen.dart';
import 'package:mobile_ifi_app/modules/profile_screen/ui/view/qr_code_screen.dart';
import 'package:mobile_ifi_app/modules/savings_screen/core/ui/view/savings_screen.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_savings/ui/view/deposit_savings_screen.dart';

class RoutesPages {
  static var list = [
    GetPage(name: Routes.login, page: () => LoginScreen()),
    GetPage(name: Routes.home, page: () => HomeScreen()),
    GetPage(name: Routes.main, page: () => Mainscreen()),
    GetPage(name: Routes.history, page: () => HistoryScreen()),
    GetPage(name: Routes.profile, page: () => ProfileScreen()),
    GetPage(name: Routes.savings, page: () => SavingsScreen()),
    GetPage(name: Routes.editProfile, page: () => EditProfileScreen()),
    GetPage(name: Routes.qrCode, page: () => QrCodeScreen()),
    GetPage(name: Routes.depositSavings, page: () => DepositSavingsScreen()),
  ];
}

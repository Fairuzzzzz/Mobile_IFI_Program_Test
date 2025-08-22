import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/basic_layout/responsive_layout.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_savings/ui/view/deposit_savings_screen_mobile.dart';

class DepositSavingsScreen extends StatelessWidget {
  const DepositSavingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileScaffold: DepositSavingsScreenMobile());
  }
}

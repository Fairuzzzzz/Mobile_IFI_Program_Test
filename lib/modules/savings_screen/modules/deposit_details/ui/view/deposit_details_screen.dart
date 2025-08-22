import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/basic_layout/responsive_layout.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_details/ui/view/deposit_details_screen_mobile.dart';

class DepositDetailsScreen extends StatelessWidget {
  final String amount;
  final String bankName;
  final String bankIconUrl;

  const DepositDetailsScreen({
    super.key,
    required this.amount,
    required this.bankName,
    required this.bankIconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: DepositDetailsScreenMobile(
        amount: amount,
        bankName: bankName,
        bankIconUrl: bankIconUrl,
      ),
    );
  }
}

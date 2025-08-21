import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/basic_layout/responsive_layout.dart';
import 'package:mobile_ifi_app/modules/profile_screen/ui/view/qr_code_screen_mobile.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileScaffold: QrCodeScreenMobile());
  }
}

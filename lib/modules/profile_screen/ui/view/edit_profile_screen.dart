import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/basic_layout/responsive_layout.dart';
import 'package:mobile_ifi_app/modules/profile_screen/ui/view/edit_profile_screen_mobile.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileScaffold: EditProfileScreenMobile());
  }
}

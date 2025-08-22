import 'package:flutter/material.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class BankCard extends StatelessWidget {
  final String bankName;
  final String bankLogoUrl;
  final VoidCallback onTap;

  const BankCard({
    super.key,
    required this.bankName,
    required this.bankLogoUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: CustomColor.primaryColor.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(bankLogoUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              ScaledHorizontalSpace(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TitleHeading5Widget(text: bankName, color: Colors.black),
                  ScaledVerticalSpace(8),
                  TitleHeading5Widget(
                    text: "Minimal transaksi Rp 100,000",
                    color: CustomColor.primaryColor.withOpacity(0.5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

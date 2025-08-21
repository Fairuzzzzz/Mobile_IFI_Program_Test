import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading1_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class DepositCard extends StatelessWidget {
  final String date;
  final String amount;
  final String status;

  const DepositCard({
    super.key,
    required this.date,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 86,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: CustomColor.primaryColor.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/money_bag.svg'),
                ScaledHorizontalSpace(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleHeading5Widget(
                      text: "Tagihan",
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    ScaledVerticalSpace(4),
                    TitleHeading5Widget(
                      text: date,
                      color: CustomColor.primaryColor.withOpacity(0.5),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleHeading1Widget(
                  text: amount,
                  color: CustomColor.primaryColor,
                  fontSize: 20,
                ),
                ScaledVerticalSpace(4),
                TitleHeading5Widget(
                  text: status,
                  color: status == "Berhasil"
                      ? CustomColor.primaryColor.withOpacity(0.8)
                      : Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/button/primary_button.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading1_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';
import 'package:mobile_ifi_app/modules/savings_screen/core/ui/widget/savings_table_widget.dart';

class SavingsScreenMobile extends StatelessWidget {
  const SavingsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/second_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 56, bottom: 56),
                child: TitleHeading3Widget(
                  text: "Tabungan",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                      bottomLeft: Radius.circular(34),
                      bottomRight: Radius.circular(34),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CustomColor.primaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TitleHeading5Widget(
                                    text: "Sisa Tabungan",
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  ScaledVerticalSpace(4),
                                  TitleHeading1Widget(
                                    text: "Rp 0",
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                  ScaledVerticalSpace(24),
                                  TitleHeading5Widget(
                                    text: "Muhammad Fadhil",
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ScaledVerticalSpace(12),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CustomColor.primaryColor.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/history_color.svg',
                                          ),
                                          ScaledHorizontalSpace(8),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              TitleHeading5Widget(
                                                text: "Tagihan",
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                              ScaledVerticalSpace(4),
                                              TitleHeading5Widget(
                                                text: "Bulan Mei 2025",
                                                color: CustomColor.primaryColor
                                                    .withOpacity(0.5),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      TitleHeading1Widget(
                                        text: "Rp 4.000.000",
                                        color: CustomColor.primaryColor,
                                        fontSize: 20,
                                      ),
                                    ],
                                  ),
                                  ScaledVerticalSpace(12),
                                  SavingsTableWidget(),
                                ],
                              ),
                            ),
                          ),
                          ScaledVerticalSpace(12),
                          PrimaryButton(
                            title: "Setor Tabungan",
                            buttonColor: CustomColor.primaryColor,
                            buttonTextColor: Colors.white,
                            onPressed: () {
                              Get.toNamed(Routes.depositSavings);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

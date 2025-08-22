import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/button/primary_button.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading1_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_details/ui/widget/payment_expanded_card.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/transactions/ui/view/transactions_screen.dart';

class DepositDetailsScreenMobile extends StatelessWidget {
  final String amount;
  final String bankName;
  final String bankIconUrl;

  const DepositDetailsScreenMobile({
    super.key,
    required this.amount,
    required this.bankName,
    required this.bankIconUrl,
  });

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
                  text: "Setor Tabungan",
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/icons/money_bag.svg'),
                                ScaledVerticalSpace(12),
                                TitleHeading1Widget(
                                  text: "Total Setoran",
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                ScaledVerticalSpace(8),
                                TitleHeading1Widget(
                                  text: amount,
                                  color: CustomColor.primaryColor,
                                  fontSize: 30,
                                ),
                                ScaledVerticalSpace(12),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: CustomColor.primaryColor.withOpacity(
                                      0.1,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        TitleHeading5Widget(
                                          text: "Bank yang dipilih",
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        ScaledVerticalSpace(12),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        bankIconUrl,
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                                ScaledHorizontalSpace(12),
                                                TitleHeading5Widget(
                                                  text: bankName,
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        ScaledVerticalSpace(20),
                                        TitleHeading5Widget(
                                          text: "Informasi Bank",
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        TitleHeading5Widget(
                                          text:
                                              "Transfer total setoran dengan tujuan akun berikut:",
                                          color: Colors.black,
                                        ),
                                        ScaledVerticalSpace(8),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  16,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TitleHeading5Widget(
                                                      text: "Nomor akun bank",
                                                      color: Colors.black,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        TitleHeading3Widget(
                                                          text:
                                                              "098123456789020",
                                                          color: Colors.black,
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons.copy,
                                                            color: CustomColor
                                                                .primaryColor,
                                                            size: 18,
                                                          ),
                                                          splashRadius: 12,
                                                          padding:
                                                              EdgeInsets.zero,
                                                          onPressed: () {
                                                            Clipboard.setData(
                                                              ClipboardData(
                                                                text:
                                                                    "098123456789020",
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1,
                                                color: Colors.grey,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  16,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TitleHeading5Widget(
                                                      text: "Nama akun bank",
                                                      color: Colors.black,
                                                    ),
                                                    TitleHeading3Widget(
                                                      text: "PESANTREN",
                                                      color: Colors.black,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ScaledVerticalSpace(12),
                          TitleHeading5Widget(
                            text: "Cara Pembayaran",
                            color: Colors.black,
                          ),
                          ScaledVerticalSpace(12),
                          PaymentExpandedCard(
                            title: "Melalui ATM",
                            description: "Test",
                          ),
                          ScaledVerticalSpace(12),
                          PaymentExpandedCard(
                            title: "Melalui Mobile Banking",
                            description: "Test",
                          ),
                          ScaledVerticalSpace(12),
                          PrimaryButton(
                            buttonColor: CustomColor.primaryColor,
                            title: "Saya sudah transfer",
                            buttonTextColor: Colors.white,
                            onPressed: () {
                              Get.to(
                                () => TransactionsScreen(
                                  amount: amount,
                                  bankName: bankName,
                                  bankIconUrl: bankIconUrl,
                                ),
                              );
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

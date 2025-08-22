import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/button/primary_button.dart';
import 'package:mobile_ifi_app/core/ui/widgets/form_field/primary_form_field.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_details/ui/view/deposit_details_screen.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_savings/controller/deposit_savings_screen_controller.dart';
import 'package:mobile_ifi_app/modules/savings_screen/modules/deposit_savings/ui/widget/bank_card.dart';

class DepositSavingsScreenMobile extends StatelessWidget {
  const DepositSavingsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DepositSavingsScreenController());

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Iconify(
                        MaterialSymbols.keyboard_arrow_left,
                        color: Colors.white,
                        size: 36,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    TitleHeading3Widget(
                      text: "Setor Tabungan",
                      color: Colors.white,
                      fontSize: 28,
                    ),
                    SizedBox(width: 40),
                  ],
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TitleHeading5Widget(
                            text: "Transfer via Bank",
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          ScaledVerticalSpace(12),
                          BankCard(
                            bankLogoUrl: 'assets/icons/bri_icon.png',
                            bankName: "Bank BRI",
                            onTap: () => _showTransferForm(
                              context,
                              "Bank BRI",
                              "assets/icons/bri_icon.png",
                              controller.amountController,
                            ),
                          ),
                          ScaledVerticalSpace(12),
                          BankCard(
                            bankLogoUrl: 'assets/icons/bni_icon.png',
                            bankName: "Bank BNI",
                            onTap: () => _showTransferForm(
                              context,
                              "Bank BNI",
                              "assets/icons/bni_icon.png",
                              controller.amountController,
                            ),
                          ),
                          ScaledVerticalSpace(12),
                          BankCard(
                            bankLogoUrl: 'assets/icons/bca_icon.png',
                            bankName: "Bank BCA",
                            onTap: () => _showTransferForm(
                              context,
                              "Bank BCA",
                              "assets/icons/bca_icon.png",
                              controller.amountController,
                            ),
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

  void _showTransferForm(
    BuildContext context,
    String bankName,
    String bankIconUrl,
    TextEditingController amountController,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 20,
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(bankIconUrl),
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
                    ScaledVerticalSpace(12),
                    TitleHeading5Widget(
                      text: "Jumlah Transfer",
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    PrimaryFormField(
                      label: "Masukan Jumlah",
                      controller: amountController,
                      textInputType: TextInputType.number,
                    ),
                    ScaledVerticalSpace(12),
                    PrimaryButton(
                      title: "Lanjut",
                      buttonColor: CustomColor.primaryColor,
                      onPressed: () {
                        if (amountController.text.isNotEmpty) {
                          String formattedAmount =
                              "Rp ${amountController.text}";

                          Navigator.pop(context);

                          Get.to(
                            () => DepositDetailsScreen(
                              amount: formattedAmount,
                              bankName: bankName,
                              bankIconUrl: bankIconUrl,
                            ),
                          );
                        } else {
                          Get.snackbar(
                            'Error',
                            'Jumlah transfer tidak boleh kosong',
                            backgroundColor: Colors.red,
                            colorText: Colors.white,
                          );
                        }
                      },
                    ),
                    ScaledVerticalSpace(16),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

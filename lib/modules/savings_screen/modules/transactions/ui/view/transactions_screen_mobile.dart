import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/button/primary_button.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading1_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class TransactionsScreenMobile extends StatefulWidget {
  final String amount;
  final String bankName;
  final String bankIconUrl;

  const TransactionsScreenMobile({
    super.key,
    required this.amount,
    required this.bankName,
    required this.bankIconUrl,
  });

  @override
  State<TransactionsScreenMobile> createState() =>
      _TransactionsScreenMobileState();
}

class _TransactionsScreenMobileState extends State<TransactionsScreenMobile> {
  bool _isPhotoUploaded = false;
  String _photoName = "";

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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                SvgPicture.asset('assets/icons/checklist.svg'),
                                ScaledVerticalSpace(12),
                                TitleHeading1Widget(
                                  text: "Terima Kasih!",
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                                ScaledVerticalSpace(8),
                                TitleHeading5Widget(
                                  text:
                                      "Mohon untuk menyertakan bukti pembayaran agar transaksi bisa kami proses. Langkah ini bersifat wajib.",
                                  textAlign: TextAlign.center,
                                  color: Colors.black,
                                  fontSize: 18,
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
                                          text: "Detail Pembayaran",
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        ScaledVerticalSpace(4),
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
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    TitleHeading5Widget(
                                                      text: "Jumlah Setoran",
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                    TitleHeading3Widget(
                                                      text: widget.amount,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  ],
                                                ),
                                                ScaledVerticalSpace(4),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    TitleHeading5Widget(
                                                      text: "Bank yang dipakai",
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(
                                                                widget
                                                                    .bankIconUrl,
                                                              ),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                        ScaledHorizontalSpace(
                                                          8,
                                                        ),
                                                        TitleHeading3Widget(
                                                          text: widget.bankName,
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        ScaledVerticalSpace(24),
                                        TitleHeading5Widget(
                                          text: "Bukti Pembayaran",
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                        ScaledVerticalSpace(12),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isPhotoUploaded = true;
                                              _photoName = "bukti_transfer.jpg";
                                            });
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                color: Colors.grey,
                                                width: 1,
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16),
                                              child: Row(
                                                children: [
                                                  Iconify(
                                                    _isPhotoUploaded
                                                        ? MaterialSymbols
                                                              .check_circle
                                                        : MaterialSymbols.add,
                                                    color: CustomColor
                                                        .primaryColor,
                                                  ),
                                                  ScaledHorizontalSpace(12),
                                                  TitleHeading5Widget(
                                                    text: _isPhotoUploaded
                                                        ? _photoName
                                                        : "Tambah foto",
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ScaledVerticalSpace(12),
                                PrimaryButton(
                                  title: "Kembali ke Home",
                                  buttonColor: _isPhotoUploaded
                                      ? CustomColor.primaryColor
                                      : CustomColor.primaryColor.withOpacity(
                                          0.5,
                                        ),
                                  onPressed: _isPhotoUploaded
                                      ? () {
                                          Get.toNamed(Routes.home);
                                        }
                                      : null,
                                ),
                              ],
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
}

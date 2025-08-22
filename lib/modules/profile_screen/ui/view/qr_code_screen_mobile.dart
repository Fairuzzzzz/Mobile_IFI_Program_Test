import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class QrCodeScreenMobile extends StatelessWidget {
  const QrCodeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
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
                      text: "QR Code",
                      color: Colors.white,
                      fontSize: 28,
                    ),
                    SizedBox(width: 40),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 440,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ScaledVerticalSpace(30),
                            TitleHeading5Widget(
                              text: "Tunjukan QR untuk pembayaran",
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            ScaledVerticalSpace(12),
                            Container(
                              width: 240,
                              height: 240,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/qrdummy.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ScaledVerticalSpace(12),
                            Container(
                              height: 48,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.red.withOpacity(0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: TitleHeading5Widget(
                                    text: "Kode berlaku 00:20",
                                    color: Colors.red.withOpacity(0.9),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/scan_icon.svg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ScaledVerticalSpace(24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TitleHeading5Widget(
                  text: "Pastikan nominal transaksi sudah sesuai",
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

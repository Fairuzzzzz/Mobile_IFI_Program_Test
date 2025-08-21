import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';
import 'package:mobile_ifi_app/modules/home_screen/ui/widget/news_card.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/masjid.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleHeading5Widget(
                              text: "Maghrib",
                              color: Colors.white,
                              fontSize: 18,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TitleHeading5Widget(
                                  text: "Jumat, 01 Oktober 2021",
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                ScaledVerticalSpace(4),
                                TitleHeading5Widget(
                                  text: "24 Safar 1443 H",
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        ScaledVerticalSpace(32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleHeading3Widget(
                              text: "17:43",
                              color: Colors.white,
                              fontSize: 36,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.white),
                                TitleHeading5Widget(
                                  text: "Yogyakarta",
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/gambar_haji.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: TitleHeading5Widget(
                            text:
                                "Pentingnya Integrasi Tasawuf dalam Kurikulum Pembelajaran",
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        ScaledVerticalSpace(16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleHeading5Widget(
                              text: "Berita & Artikel",
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            TitleHeading5Widget(
                              text: "Lihat Semua",
                              color: CustomColor.primaryColor,
                              fontSize: 16,
                            ),
                          ],
                        ),
                        ScaledVerticalSpace(12),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            physics: BouncingScrollPhysics(),
                            children: [
                              NewsCard(
                                title:
                                    "Program Pendidikan Standarisasi Da'i MUI ke-36",
                                imageUrl: "assets/images/image1.png",
                                date: "18/12/2024",
                              ),
                              ScaledVerticalSpace(8),
                              NewsCard(
                                title: "Ayo Nyantri di Pondok Pesantren As'ad",
                                imageUrl: "assets/images/image2.png",
                                date: "03/12/2024",
                              ),
                              ScaledVerticalSpace(8),
                              NewsCard(
                                title: "Perayaan Hari Santri tampak berbeda",
                                imageUrl: "assets/images/image3.png",
                                date: "31/10/2024",
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
          Positioned(
            top: 172,
            left: 20,
            right: 20,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/wallet_color.svg'),
                        ScaledHorizontalSpace(8),
                        Column(
                          children: [
                            TitleHeading5Widget(
                              text: "Uang Bulanan",
                              color: CustomColor.primaryColor,
                              fontSize: 16,
                            ),
                            ScaledVerticalSpace(4),
                            TitleHeading5Widget(
                              text: "Rp. 2.000.000",
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Row(
                      children: [
                        TitleHeading5Widget(
                          text: "Lihat Tabungan",
                          color: CustomColor.primaryColor,
                          fontSize: 16,
                        ),
                        ScaledHorizontalSpace(8),
                        Iconify(
                          MaterialSymbols.keyboard_arrow_right,
                          color: CustomColor.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: CustomColor.primaryColor,
    );
  }
}

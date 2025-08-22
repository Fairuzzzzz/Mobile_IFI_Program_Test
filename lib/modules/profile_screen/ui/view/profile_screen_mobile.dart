import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/button/primary_button.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_horizontal_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading1_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';

class ProfileScreenMobile extends StatelessWidget {
  const ProfileScreenMobile({super.key});

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
                  text: "Profil",
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ScaledVerticalSpace(30),
                              Center(
                                child: Column(
                                  children: [
                                    TitleHeading3Widget(
                                      text: "Muhammad Fadhil",
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                    ScaledVerticalSpace(12),
                                    TitleHeading5Widget(
                                      text: "Madrasah Ibtidaiyah",
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ],
                                ),
                              ),
                              ScaledVerticalSpace(12),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TitleHeading1Widget(
                                            text: "Data Sekolah",
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.edit_document),
                                            color: CustomColor.primaryColor,
                                            onPressed: () {
                                              Get.toNamed(Routes.editProfile);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(thickness: 2, color: Colors.grey),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  TitleHeading5Widget(
                                                    text: "Kelas",
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                  ),
                                                  ScaledVerticalSpace(4),
                                                  TitleHeading5Widget(
                                                    text: "-",
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  TitleHeading5Widget(
                                                    text: "NSM",
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                  ),
                                                  ScaledVerticalSpace(4),
                                                  TitleHeading5Widget(
                                                    text: "000987654321",
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          ScaledVerticalSpace(12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  TitleHeading5Widget(
                                                    text: "NISN",
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                  ),
                                                  ScaledVerticalSpace(4),
                                                  TitleHeading5Widget(
                                                    text: "000987654321",
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  TitleHeading5Widget(
                                                    text: "Jenis Kelamin",
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                  ),
                                                  ScaledVerticalSpace(4),
                                                  TitleHeading5Widget(
                                                    text: "Laki - Laki",
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          ScaledVerticalSpace(12),
                                          TitleHeading5Widget(
                                            text: "Tempat, tanggal lahir",
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                          ScaledVerticalSpace(4),
                                          TitleHeading5Widget(
                                            text: "Yogyakarta, 21 April 2008",
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                          ScaledVerticalSpace(12),
                                          TitleHeading5Widget(
                                            text: "Alamat",
                                            color: Colors.grey,
                                            fontSize: 16,
                                          ),
                                          ScaledVerticalSpace(4),
                                          TitleHeading5Widget(
                                            text:
                                                "Jl. Nakula No. 34 Ketanggungan, Wirobrajan",
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ScaledVerticalSpace(12),
                              Row(
                                children: [
                                  Expanded(
                                    child: PrimaryButton(
                                      title: "Keluar",
                                      buttonColor: Colors.red,
                                      onPressed: () {
                                        Get.toNamed(Routes.login);
                                      },
                                    ),
                                  ),
                                  ScaledHorizontalSpace(8),
                                  Expanded(
                                    child: PrimaryButton(
                                      title: "QR Code",
                                      buttonColor: CustomColor.primaryColor,
                                      onPressed: () {
                                        Get.toNamed(Routes.qrCode);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/profile_circle.svg',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

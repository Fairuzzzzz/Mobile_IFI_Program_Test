import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:mobile_ifi_app/core/routes/routes.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/button/primary_button.dart';
import 'package:mobile_ifi_app/core/ui/widgets/dropdown/primary_dropdown.dart';
import 'package:mobile_ifi_app/core/ui/widgets/form_field/primary_form_field.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';
import 'package:mobile_ifi_app/modules/profile_screen/controller/profile_screen_controller.dart';

class EditProfileScreenMobile extends StatelessWidget {
  const EditProfileScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileScreenController());

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
                      text: "Profile",
                      color: Colors.white,
                      fontSize: 28,
                    ),
                    SizedBox(width: 40),
                  ],
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
                              ScaledVerticalSpace(30),
                              Center(
                                child: Column(
                                  children: [
                                    TitleHeading3Widget(
                                      text: "Muhammad Fadhil",
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                              TitleHeading5Widget(
                                text: "Tingkat",
                                color: Colors.grey,
                              ),
                              ScaledVerticalSpace(2),
                              Obx(
                                () => PrimaryDropdownField<String>(
                                  label: "Pilih Tingkat",
                                  value: controller.selectedGrade.value,
                                  items: controller.gradeOptions.map((
                                    String grade,
                                  ) {
                                    return DropdownMenuItem<String>(
                                      value: grade,
                                      child: Text(grade),
                                    );
                                  }).toList(),
                                  onChanged: (String? value) {
                                    controller.selectedGrade.value = value;
                                  },
                                ),
                              ),
                              ScaledVerticalSpace(8),
                              TitleHeading5Widget(
                                text: "Kelas",
                                color: Colors.grey,
                              ),
                              PrimaryFormField(
                                label: "Kelas",
                                controller: controller.classController,
                              ),
                              ScaledVerticalSpace(8),
                              TitleHeading5Widget(
                                text: "NSM",
                                color: Colors.grey,
                              ),
                              PrimaryFormField(
                                label: "NSM",
                                controller: controller.nsmController,
                              ),
                              ScaledVerticalSpace(8),
                              TitleHeading5Widget(
                                text: "NISN",
                                color: Colors.grey,
                              ),
                              PrimaryFormField(
                                label: "NISN",
                                controller: controller.nisnController,
                              ),
                              ScaledVerticalSpace(8),
                              TitleHeading5Widget(
                                text: "Jenis Kelamin",
                                color: Colors.grey,
                              ),
                              PrimaryFormField(
                                label: "Jenis Kelamin",
                                controller: controller.genderController,
                              ),
                              ScaledVerticalSpace(8),
                              TitleHeading5Widget(
                                text: "Tempat, tanggal lahir",
                                color: Colors.grey,
                              ),
                              PrimaryFormField(
                                label: "Tempat, tanggal lahir",
                                controller: controller.birthLocationController,
                              ),
                              ScaledVerticalSpace(8),
                              TitleHeading5Widget(
                                text: "Alamat",
                                color: Colors.grey,
                              ),
                              PrimaryFormField(
                                label: "Alamat",
                                controller: controller.addressController,
                              ),
                              ScaledVerticalSpace(12),
                              PrimaryButton(
                                title: "Simpan",
                                buttonColor: CustomColor.primaryColor,
                                onPressed: () {
                                  Get.toNamed(Routes.profile);
                                },
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

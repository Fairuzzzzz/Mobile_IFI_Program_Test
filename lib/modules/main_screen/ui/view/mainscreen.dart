import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_style.dart';
import 'package:mobile_ifi_app/modules/history_screen/ui/view/history_screen.dart';
import 'package:mobile_ifi_app/modules/home_screen/ui/view/home_screen.dart';
import 'package:mobile_ifi_app/modules/main_screen/controller/mainscreen_controller.dart';
import 'package:mobile_ifi_app/modules/profile_screen/ui/view/profile_screen.dart';
import 'package:mobile_ifi_app/modules/savings_screen/core/ui/view/savings_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeScreen(),
      const SavingsScreen(),
      const HistoryScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainscreenController());

    return Obx(() {
      return Scaffold(
        body: IndexedStack(index: controller.selectedIndex, children: _pages),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: CustomColor.primaryColor,
            indicatorColor: CustomColor.primaryColor,
            surfaceTintColor: CustomColor.primaryColor,
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return CustomStyle.lightHeading5TextStyle.copyWith(
                  color: CustomColor.lightFontColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                );
              }

              return CustomStyle.lightHeading5TextStyle.copyWith(
                color: CustomColor.grayColor,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              );
            }),
          ),
          child: NavigationBar(
            selectedIndex: controller.selectedIndex,
            onDestinationSelected: (int index) {
              controller.changeIndex(index);
            },
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(
                  controller.selectedIndex == 0
                      ? 'assets/icons/home.svg'
                      : 'assets/icons/home_outline.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    controller.selectedIndex == 0
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                    BlendMode.srcIn,
                  ),
                  placeholderBuilder: (context) => Icon(
                    Icons.home,
                    color: controller.selectedIndex == 0
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                  ),
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  controller.selectedIndex == 1
                      ? 'assets/icons/wallet.svg'
                      : 'assets/icons/wallet_outline.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    controller.selectedIndex == 1
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                    BlendMode.srcIn,
                  ),
                  placeholderBuilder: (context) => Icon(
                    Icons.home,
                    color: controller.selectedIndex == 1
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                  ),
                ),
                label: "Tabungan",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  controller.selectedIndex == 2
                      ? 'assets/icons/history.svg'
                      : 'assets/icons/history_outline.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    controller.selectedIndex == 2
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                    BlendMode.srcIn,
                  ),
                  placeholderBuilder: (context) => Icon(
                    Icons.home,
                    color: controller.selectedIndex == 2
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                  ),
                ),
                label: "Riwayat",
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  controller.selectedIndex == 3
                      ? 'assets/icons/profile.svg'
                      : 'assets/icons/profile_outline.svg',
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    controller.selectedIndex == 3
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                    BlendMode.srcIn,
                  ),
                  placeholderBuilder: (context) => Icon(
                    Icons.home,
                    color: controller.selectedIndex == 3
                        ? CustomColor.lightFontColor
                        : CustomColor.grayColor,
                  ),
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      );
    });
  }
}

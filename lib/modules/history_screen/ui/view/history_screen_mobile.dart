import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/utils.dart';
import 'package:mobile_ifi_app/core/ui/theme/custom_color.dart';
import 'package:mobile_ifi_app/core/ui/widgets/layout/scaled_vertical_space.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading3_widget.dart';
import 'package:mobile_ifi_app/core/ui/widgets/text_label/title_heading5_widget.dart';
import 'package:mobile_ifi_app/modules/history_screen/controller/history_screen_controller.dart';
import 'package:mobile_ifi_app/modules/history_screen/ui/widget/deposit_card.dart';
import 'package:mobile_ifi_app/modules/history_screen/ui/widget/outcome_card.dart';

class HistoryScreenMobile extends StatelessWidget {
  const HistoryScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HistoryScreenController());

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
                  text: "Riwayat",
                  color: Colors.white,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Obx(
                                () => GestureDetector(
                                  onTap: () => controller.changeTab(0),
                                  child: Container(
                                    height: 48,
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      color: controller.selectedTab == 0
                                          ? CustomColor.primaryColor
                                          : Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Center(
                                      child: TitleHeading5Widget(
                                        text: "Pengeluaran",
                                        color: controller.selectedTab == 0
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Obx(
                                () => GestureDetector(
                                  onTap: () => controller.changeTab(1),
                                  child: Container(
                                    height: 48,
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      color: controller.selectedTab == 1
                                          ? CustomColor.primaryColor
                                          : Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Center(
                                      child: TitleHeading5Widget(
                                        text: "Setoran",
                                        color: controller.selectedTab == 1
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ScaledVerticalSpace(12),
                        Expanded(
                          child: TabBarView(
                            controller: controller.tabController,
                            children: [
                              _buildPengeluaranTab(),
                              _buildSetoranTab(),
                            ],
                          ),
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
    );
  }

  Widget _buildPengeluaranTab() {
    final controller = Get.find<HistoryScreenController>();
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: controller.outcomeData.length,
      separatorBuilder: (context, index) => ScaledVerticalSpace(12),
      itemBuilder: (context, index) {
        final item = controller.outcomeData[index];
        return OutcomeCard(
          amount: item['amount'] as String,
          date: item['date'] as String,
          details: List<Map<String, dynamic>>.from(item['details'] as List),
        );
      },
    );
  }

  Widget _buildSetoranTab() {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: 5,
      separatorBuilder: (context, index) => ScaledVerticalSpace(4),
      itemBuilder: (context, index) {
        return DepositCard(
          amount: "Rp 4.000.000",
          date: "2023-07-01",
          status: "Berhasil",
        );
      },
    );
  }
}

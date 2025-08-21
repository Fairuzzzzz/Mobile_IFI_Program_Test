import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HistoryScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);

    tabController.addListener(() {
      if (!tabController.indexIsChanging) {
        _selectedTab.value = tabController.index;
      }
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void changeTab(int index) {
    tabController.animateTo(index);
    _selectedTab.value = index;
  }
}

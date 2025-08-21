import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HistoryScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  final _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;

  final outcomeData = [
    {
      'date': 'Bulan Mei 2023',
      'amount': 'Rp 4.000.000',
      'details': [
        {'label': 'Uang Bulanan', 'amount': 'Rp 2.000.000', 'isPaid': true},
        {'label': 'Biaya Asrama', 'amount': 'Rp 1.000.000', 'isPaid': true},
        {'label': 'Katering', 'amount': 'Rp 500.000', 'isPaid': true},
        {'label': 'Laundry', 'amount': 'Rp 500.000', 'isPaid': false},
      ],
    },
    {
      'date': 'Bulan April 2023',
      'amount': 'Rp 4.000.000',
      'details': [
        {'label': 'Uang Bulanan', 'amount': 'Rp 2.000.000', 'isPaid': true},
        {'label': 'Biaya Asrama', 'amount': 'Rp 1.000.000', 'isPaid': true},
        {'label': 'Katering', 'amount': 'Rp 500.000', 'isPaid': true},
        {'label': 'Laundry', 'amount': 'Rp 500.000', 'isPaid': true},
      ],
    },
    {
      'date': 'Bulan Maret 2023',
      'amount': 'Rp 4.000.000',
      'details': [
        {'label': 'Uang Bulanan', 'amount': 'Rp 2.000.000', 'isPaid': true},
        {'label': 'Biaya Asrama', 'amount': 'Rp 1.000.000', 'isPaid': true},
        {'label': 'Katering', 'amount': 'Rp 500.000', 'isPaid': true},
        {'label': 'Laundry', 'amount': 'Rp 500.000', 'isPaid': true},
      ],
    },
  ];

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

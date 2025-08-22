import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  final depositData = [
    {'date': '15 Mei 2025', 'amount': 'Rp 4.000.000', 'status': 'Tertunda'},
    {'date': '21 April 2025', 'amount': 'Rp 500.000', 'status': 'Berhasil'},
    {'date': '05 April 2025', 'amount': 'Rp 3.500.000', 'status': 'Berhasil'},
    {'date': '03 Maret 2025', 'amount': 'Rp 4.000.000', 'status': 'Berhasil'},
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

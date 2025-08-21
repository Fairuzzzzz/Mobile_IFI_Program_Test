import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ProfileScreenController extends GetxController {
  final classController = TextEditingController(text: "-");
  final nsmController = TextEditingController(text: "000987654321");
  final nisnController = TextEditingController(text: "000987654321");
  final genderController = TextEditingController(text: "Laki - laki");
  final birthLocationController = TextEditingController(
    text: "Yogyakarta, 21 April 2008",
  );
  final addressController = TextEditingController(
    text: "Jl. Nakula No. 34 Ketanggungan, Wirobrajan",
  );

  final List<String> gradeOptions = [
    'Madrasah Ibtidaiyah',
    'Kelas 1',
    'Kelas 2',
    'Kelas 3',
  ];
  final Rx<String?> selectedGrade = Rx<String?>(null);

  @override
  void onInit() {
    super.onInit();
    selectedGrade.value = gradeOptions.first;
  }
}

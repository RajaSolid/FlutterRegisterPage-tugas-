import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calcontroller extends GetxController {
  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var texthasil = "".obs;

  bool isValidInput() {
    String a1 = txtangka1.text.trim();
    String a2 = txtangka2.text.trim();

    if (a1.isEmpty || a2.isEmpty) {
      Get.snackbar("Input Error", "Input wajib angka",
          backgroundColor: Colors.red, colorText: Colors.white);
      return false;
    }

    if (double.tryParse(a1) == null || double.tryParse(a2) == null) {
      Get.snackbar("Input Error", "Input wajib angka",
          backgroundColor: Colors.orange, colorText: Colors.white);
      return false;
    }

    return true;
  }

  void tambah() {
    if (!isValidInput()) return;

    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasil = angka1 + angka2;
    texthasil.value = hasil.toString();
  }

  void kurang() {
    if (!isValidInput()) return;

    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasil = angka1 - angka2;
    texthasil.value = hasil.toString();
  }

  void kali() {
    if (!isValidInput()) return;

    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    int hasil = angka1 * angka2;
    texthasil.value = hasil.toString();
  }

  void bagi() {
    if (!isValidInput()) return;

    int angka1 = int.parse(txtangka1.text);
    int angka2 = int.parse(txtangka2.text);

    if (angka2 == 0) {
      Get.snackbar("Math Error", "Tidak bisa dibagi dengan nol",
          backgroundColor: Colors.blue, colorText: Colors.white);
      return;
    }

    double hasil = angka1 / angka2;
    texthasil.value = hasil.toStringAsFixed(2);
  }

  void clear() {
    txtangka1.clear();
    txtangka2.clear();
    texthasil.value = "";
  }
}

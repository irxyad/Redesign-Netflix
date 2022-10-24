// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final TextEditingController nama = TextEditingController();

  void login() {
    if (nama.text == "21275") {
      Get.toNamed('/rekomendasi');
    } else if (nama.text == "") {
      Get.defaultDialog(
          title: 'INFO',
          titleStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.black,
          barrierDismissible: true,
          middleTextStyle: const TextStyle(
            color: Colors.white,
          ),
          middleText: 'Anda Belum Memasukkan PIN');
    } else {
      Get.defaultDialog(
          title: 'PIN SALAH!',
          titleStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.black,
          barrierDismissible: true,
          middleText: 'Silahkan Masukkan PIN Yang Benar',
          middleTextStyle: const TextStyle(color: Colors.white));
    }
  }

  RxBool sembunyi = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  List profil = [];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

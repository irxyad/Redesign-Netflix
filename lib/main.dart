import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:re_netflik/app/modules/home/views/home_view.dart';
import 'package:re_netflik/app/modules/intro/views/intro_view.dart';
import 'package:re_netflik/app/modules/rekomendasi/views/rekomendasi_view.dart';
import 'package:re_netflik/app/modules/setting/views/setting_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: ThemeData(primaryColor: Colors.red, primaryColorDark: Colors.red),
      initialRoute: Routes.REKOMENDASI,
      getPages: [
        GetPage(
            name: '/rekomendasi',
            page: () => const RekomendasiView(),
            transition: Transition.cupertino),
        GetPage(
            name: '/intro',
            page: () => IntroView(),
            transition: Transition.zoom),
        GetPage(
            name: '/home',
            page: () => const HomeView(),
            transition: Transition.size),
        GetPage(
            name: '/setting',
            page: () => const SettingView(),
            transition: Transition.rightToLeft,
            curve: Curves.elasticInOut,
            preventDuplicates: true,
            opaque: true,
            // fullscreenDialog: true,
            popGesture: true),
        // GetPage(name: '/contoh', page: () => const ContohHalamanView()),
      ],
    ),
  );
}

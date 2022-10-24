// ignore_for_file: prefer_const_constructors
import 'package:flutter/services.dart';
import '../controllers/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:re_netflik/app/modules/rekomendasi/views/rekomendasi_view.dart';
// import 'package:re_netflik/app/decode.dart';

class IntroView extends GetView<IntroController> {
  final IntroController namamu = IntroController();
  final IntroController hilang = IntroController();
  // final Decodeku deco = Decodeku();
  IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //Background
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.red],
                  begin: Alignment.topRight,
                  stops: [0.6, 1],
                  end: Alignment.bottomRight),
              image: DecorationImage(
                  image: AssetImage('assets/images/bg_intro.jpg'),
                  opacity: 0.1,
                  fit: BoxFit.cover),
            ),

            // Isinya
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 50),
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Keluar dari Profil',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white.withOpacity(.5),
                                fontSize: 14),
                          )),
                    ),
                    SizedBox(
                      height: 200,
                    ),
                    Column(children: [
                      Image.asset(
                        'assets/images/logo_netflix.png',
                        height: 150,
                      ),
                      Obx((() => TextField(
                          toolbarOptions: ToolbarOptions(
                              copy: true,
                              cut: true,
                              paste: true,
                              selectAll: true),
                          autofocus: false,
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () {
                            namamu.login();
                          },
                          controller: namamu.nama,
                          obscureText: hilang.sembunyi.value,
                          keyboardType: TextInputType.number,
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(color: Colors.white),
                          maxLength: 15,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                color: Colors.red,
                                onPressed: () {
                                  hilang.sembunyi.toggle();
                                },
                                iconSize: 20,
                                icon: Icon(
                                  hilang.sembunyi.isFalse
                                      ? FontAwesomeIcons.eye
                                      : FontAwesomeIcons.eyeSlash,
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.red),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            // enabledBorder: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(15)),

                            hintStyle: TextStyle(color: Colors.white24),
                            hintText: 'Silahkan Masukkan PIN Anda',
                            label: Text(
                              'PIN',
                              style: TextStyle(color: Colors.white),
                            ),
                            // alignLabelWithHint: true,
                            // labelText: 'Username',
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(15),
                            // )
                          )))),
                      ElevatedButton(
                        onPressed: () {
                          namamu.login();
                          // Get.toNamed('/rekomendasi');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: Size(300, 50)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Lupa Pin?',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white.withOpacity(.5),
                                fontSize: 14),
                          )),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ));
    // home: Intro(message: ),
  }
}

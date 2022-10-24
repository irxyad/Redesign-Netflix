import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:re_netflik/chewie_list.dart';
import 'package:video_player/video_player.dart';

import '../controllers/rekomendasi_controller.dart';

class RekomendasiView extends GetView<RekomendasiController> {
  const RekomendasiView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
    ));

    return Scaffold(
        backgroundColor: const Color(0xFF1F1F1F),
        body: SafeArea(
            child: Column(children: [
          SizedBox(
            // color: Colors.green,
            height: 350,
            width: Get.width,
            child: Stack(children: [
              //container video
              SizedBox(
                // color: Colors.red,

                // margin: const EdgeInsets.only(top: 10),
                // height: 350,
                width: double.infinity,
                child: ChewieListItem(
                  videoPlayerController: VideoPlayerController.asset(
                    'assets/videos/trailer.mp4',
                  ),
                  looping: true,
                ),
              ),
              //container gradient
              Container(
                // height: Get.height / 7,
                width: double.infinity,
                decoration: BoxDecoration(

                    // color: Colors.amber,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                      Colors.black.withOpacity(1),
                      Colors.transparent,
                    ],
                        stops: const [
                      0.2,
                      0.5,
                    ])),
              ),
              Container(
                // height: Get.height / 7,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45)),

                    // color: Colors.amber,
                    gradient: LinearGradient(
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                        colors: [
                          Colors.black.withOpacity(1),
                          Colors.transparent,
                        ],
                        stops: const [
                          0.2,
                          0.5,
                        ])),
              ),
              //Topbar
              SizedBox(
                // padding: EdgeInsets.only(top: 10),
                height: double.infinity,
                width: double.infinity,
                // color: Colors.green,
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 30, right: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.back(
                                closeOverlays: true,
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/profile.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(6)),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 13,
                                    color: Colors.white),
                              ),
                              Text(
                                'Irsyad',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    // height: 1,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (ctx) => menuProfile());
                          },
                          child: Container(
                              padding: const EdgeInsets.all(5),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: const Image(
                                image: AssetImage('assets/icons/ic_notip.png'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ],
                    )),
              ),
              //content
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/tittle_mv1.png',
                      height: 80,
                      width: 100,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 100,
                          width: Get.width / 1.5,
                          child: ListView(
                            children: [
                              Text(
                                'Di negeri dalam mitos yang disebut Arth, para penduduk kota kuno Arthdal dan wilayah sekitarnya memperebutkan kekuasaan saat mereka membangun komunitas baru.',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(.5)),
                              ),
                            ],
                          ),
                        ),
                        Stack(children: [
                          SizedBox(
                              height: 30,
                              width: 60,
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 20,
                                    sigmaY: 20,
                                  ),
                                  child: Container(
                                    color: Colors.black.withOpacity(0.1),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: double.infinity,
                                          width: 3,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 9,
                                        ),
                                        const Text(
                                          '18+',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                        ]),
                      ],
                    ),
                    //button
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      height: 50,
                      width: double.infinity,
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              const AlertDialog(
                                title: Text('HALO'),
                              );
                            },
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                height: double.infinity,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: const Image(
                                  image: AssetImage('assets/icons/ic_Like.png'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: double.infinity,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Image(
                                      image: AssetImage(
                                          'assets/icons/ic_play.png'),
                                      height: 20,
                                      fit: BoxFit.contain),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Putar',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: 'PoppinsBold',
                                        height: 1.7),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                height: double.infinity,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: const Image(
                                  image: AssetImage('assets/icons/ic_add.png'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
          Column()
        ])));
    //     Future openDialog() =>
    // showDialog(context: context, builder: (context) => const AlertDialog(

    // ));
  }

  /// Menu Profile
  Stack menuProfile() {
    return Stack(
      children: [
        SizedBox(
          height: Get.height,
          width: Get.width,
          // color: Colors.amber.withOpacity(.5),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.black.withOpacity(0.1),
          ),
        ),
        Column(
          children: [
            Container(
              height: 73,
              width: 73,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(34)),
              child: Image.asset(
                'assets/images/profile2.png',
                // fit: BoxFit.cover,
              ),
            )
          ],
        )
      ],
    );
  }
}
//Menu

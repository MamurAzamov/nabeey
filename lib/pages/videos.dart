import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../services/bloc_service.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
  static const String id = "youtube";
}

class _VideosState extends State<Videos> {
  late YoutubePlayerController controller1;
  late YoutubePlayerController controller2;
  late YoutubePlayerController controller3;
  late YoutubePlayerController controller4;
  late YoutubePlayerController controller5;
  late YoutubePlayerController controller6;
  late YoutubePlayerController controller7;
  late YoutubePlayerController controller8;
  late YoutubePlayerController controller9;
  late YoutubePlayerController controller10;

  @override
  void initState() {
    super.initState();
    const url1 = "https://youtu.be/AGLG9vJ9UJQ?si=XKSGivQYmQK9w-pi";
    const url2 = "https://youtu.be/WRmGkwOjZGg?si=_-Q897X2T6hZpIFM";
    const url3 =
        "https://www.youtube.com/watch?v=kxv4-NAmtlY&pp=ygUZUm9zdWx1bGxvaG5pIHR1ZydpbGlzaGFyaQ%3D%3D";
    const url4 = "https://youtu.be/q8HrZxU1EII?si=ChPCDKH8Mp-W_LIM";
    const url5 = "https://youtu.be/m8KpbHutWdQ?si=RnqDRNjT31bpMNtZ";
    const url6 = "https://youtu.be/jp_Aj9C1rUM?si=lKVM4qwiiVkfMk_0";
    const url7 = "https://youtu.be/c8eEQ7ZcdxQ?si=Pc2McPEz2ZNM_KPR";
    const url8 = "https://youtu.be/eufaeOAqDpI?si=nK1gIUnC2V3lz72P";
    const url9 = "https://youtu.be/VrDWiGptrtc?si=kUonnuOnMTU0egLf";
    const url10 = "https://youtu.be/e9E_UsuTnwQ?si=0N8IflMECKriJ7pB";

    controller1 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url1)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller2 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url2)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));


    controller3 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url3)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller4 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url4)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller5 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url5)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller6 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url6)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller7 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url7)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller8 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url8)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller9 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url9)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));

    controller10 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url10)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));
  }

  @override
  void deactivate() {
    controller1.pause();
    controller2.pause();
    controller3.pause();
    controller4.pause();
    controller5.pause();
    controller6.pause();
    controller7.pause();
    controller8.pause();
    controller9.pause();
    controller10.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
    controller6.dispose();
    controller7.dispose();
    controller8.dispose();
    controller9.dispose();
    controller10.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent.navigateToVideoPage);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  "Nuriddin Xoliqnazarov videolari",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller1,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Muqaddima: Tasadduq, yo Rosululloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller2,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("2-Peshonadagi nur: Tasadduq, yo Rosulluloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller3,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("3-U zot (s.a.v)ning tug‘ilishlari: Tasadduq yo Rosulluloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller4,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Tanlangan enaga: Tasadduq yo Rosulluloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller5,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Omina onamizning vafotlari: Tasadduq yo Rosulluloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller6,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Og'ir judolik: Tasadduq yo Rosulluloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller7,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Muhammad Amin: Tasadduq yo Rosulluloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller8,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Xadicha onamizning tilagi: Tasadduq yo Rosululloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          width: 222,
                          controller: controller9,
                          showVideoProgressIndicator: true,
                          progressColors: const ProgressBarColors(
                            playedColor: Color.fromRGBO(245, 156, 22, 1),
                            handleColor: Color.fromRGBO(245, 156, 22, 1),
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "12th, July 2022",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text("10.658 views",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Zayd ibn Xorisa: Tasadduq yo Rosululloh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
      );
}

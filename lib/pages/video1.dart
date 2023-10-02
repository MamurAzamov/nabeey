import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../services/bloc_service.dart';

class Video1 extends StatefulWidget {
  const Video1({super.key});

  @override
  State<Video1> createState() => _Video1State();
  static const String id = "youtube1";
}

class _Video1State extends State<Video1> {
  late YoutubePlayerController controller1;
  late YoutubePlayerController controller2;
  late YoutubePlayerController controller3;
  late YoutubePlayerController controller4;
  late YoutubePlayerController controller5;
  late YoutubePlayerController controller6;

  @override
  void initState() {
    super.initState();
    const url1 =
        "https://youtu.be/pYn8jvqH7z8?list=PLvhNrk3VBUfYz6kPUTWeJIPeHFmx9ctlQ";
    const url2 =
        "https://youtu.be/veiL-SHZIKk?list=PLvhNrk3VBUfYz6kPUTWeJIPeHFmx9ctlQ";
    const url3 =
        "https://youtu.be/Y0aCF8GRKlE?list=PLvhNrk3VBUfYz6kPUTWeJIPeHFmx9ctlQ";
    const url4 = "https://youtu.be/fbzeMKI8kuk?list=PLvhNrk3VBUfYz6kPUTWeJIPeHFmx9ctlQ";
    const url5 = "https://youtu.be/0O8kG0IBhZg?list=PLvhNrk3VBUfYz6kPUTWeJIPeHFmx9ctlQ";
    const url6 = "https://youtu.be/wU7IkJ33SSY?list=PLvhNrk3VBUfYz6kPUTWeJIPeHFmx9ctlQ";

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
  }

  @override
  void deactivate() {
    controller1.pause();
    controller2.pause();
    controller3.pause();
    controller4.pause();
    controller5.pause();
    controller6.pause();
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
                "Abdulloh domla videolari",
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
                  const Text("Siyratning fazilati",
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
                  const Text("Zam-zam va Muhammad Sallollohu Alayhi vasallamning tug'ilishi",
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
                  const Text(
                      "Enaga Halima",
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
                  const Text("Shom safari va to'y",
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
                  const Text(
                      "Ka'ba ta'miri",
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
                  const Text("Vahiyning boshlanishi",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            ),
          ],
        ),
      ));
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../services/bloc_service.dart';

class Video1Page extends StatefulWidget {
  const Video1Page({super.key});

  @override
  State<Video1Page> createState() => _Video1PageState();
  static const String id = "youtube1_1";
}

class _Video1PageState extends State<Video1Page> {
  late YoutubePlayerController controller1;

  @override
  void initState() {
    super.initState();
    const url1 =
        "https://youtu.be/AGLG9vJ9UJQ?si=Om2MTzFPuC-acOmO";

    controller1 = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url1)!,
        flags: const YoutubePlayerFlags(
          mute: false,
          loop: false,
          autoPlay: false,
        ));
  }

  @override
  void deactivate() {
    controller1.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        child: Center(
          child: // Container(
          Container(
            margin: const EdgeInsets.only(top: 199),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
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
              ],
            ),
          ),
        )
      ));
}

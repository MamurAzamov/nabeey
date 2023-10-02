import 'dart:async';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});

  static const String id = "audio_page";

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  double _sliderValue = 0.0;
  bool isExpanded = false;
  var ppIcon = Icons.play_circle;
  final player = AudioPlayer();
  Duration? duration;
  void playAudioFromUrl(String url) async {
    await player.play(
      UrlSource(url),
    );
    duration = await player.getDuration();
    Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      player.getCurrentPosition().then((Duration? position) {
        if (position != null) {
          setState(() {
            _sliderValue = position.inSeconds.toDouble();
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/4ec532c109d74c7953455693d1feadadd53f92ea"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 1),
                    Color.fromRGBO(0, 0, 0, 0.0),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Audio",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    height: 56,
                    width: 132,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: const Color.fromRGBO(245, 158, 22, 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Take the quiz",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.grey,
                    ),
                  ),
                  child: ExpansionTileTheme(
                    data: const ExpansionTileThemeData(),
                    child: ExpansionTile(
                      onExpansionChanged: (expanded) {
                        setState(() {
                          isExpanded = expanded;
                          player.setSourceUrl(
                              'https://samplelib.com/lib/preview/mp3/sample-3s.mp3');
                        });
                      },
                      clipBehavior: Clip.none,
                      trailing: isExpanded
                          ? const Icon(
                              Feather.x,
                              size: 32,
                            )
                          : const Text(""),
                      title: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: const Text(
                          "Audio 1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SliderTheme(
                                  data: SliderThemeData(
                                    activeTrackColor:
                                        const Color.fromRGBO(245, 156, 22, 1),
                                    inactiveTrackColor:
                                        const Color.fromRGBO(224, 224, 224, 1),
                                    thumbColor:
                                        const Color.fromRGBO(245, 156, 22, 1),
                                    overlayColor: Colors.red.withOpacity(0.3),
                                  ),
                                  child: Slider(
                                    value: _sliderValue,
                                    onChanged: (double value) {
                                      setState(() {
                                        _sliderValue = value;
                                      });

                                      player.seek(
                                        Duration(
                                          seconds: value.toInt(),
                                        ),
                                      );
                                    },
                                    min: 0.0,
                                    max: duration != null
                                        ? duration!.inSeconds.toDouble()
                                        : 0.0,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    player.state == PlayerState.paused ||
                                            player.state ==
                                                PlayerState.completed
                                        ? playAudioFromUrl(
                                            'https://samplelib.com/lib/preview/mp3/sample-3s.mp3')
                                        : player.pause();
                                    setState(() {
                                      if (player.state == PlayerState.paused ||
                                          player.state ==
                                              PlayerState.completed) {
                                        ppIcon = Icons.pause_circle;
                                      } else {
                                        ppIcon = Icons.play_circle;
                                      }
                                    });
                                  },
                                  child: Icon(
                                    ppIcon,
                                    size: 55,
                                    color: const Color(0xfff59c16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

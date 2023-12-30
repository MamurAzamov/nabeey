import '../http_service.dart';
import '../imports.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({super.key});
  static const String id = "audio_page";

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return getScaffold(
      child: Expanded(
        child: FutureBuilder(
          future: fetchContent(type: "audios"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            } else if (!snapshot.hasData) {
              return const Text('No data available.');
            } else {
              final audios = snapshot.data!.data;
              return ListView.builder(
                itemCount: audios.length,
                itemBuilder: (context, i) {
                  return AudioItem(
                    audio: audios[i],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class AudioItem extends StatefulWidget {
  const AudioItem({super.key, required this.audio});
  final AudioData audio;
  @override
  State<AudioItem> createState() => _AudioItemState();
}

class _AudioItemState extends State<AudioItem> {
  double _sliderValue = 0.0;
  bool isExpanded = false;
  var ppIcon = Icons.play_circle;
  final player = AudioPlayer();
  Duration? duration;
  String audioPosition = '0:00';
  String audioDuration = '0:00';
  void playAudioFromUrl(String url) async {
    await player.play(
      UrlSource(url),
    );

    player.onDurationChanged.listen((d) {
      setState(() {
        duration = d;
        audioDuration = _printDuration(duration!);
      });
    });

    Timer? positionTimer;
    positionTimer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      player.getCurrentPosition().then((Duration? position) {
        if (position != null && duration != null) {
          setState(() {
            _sliderValue = position.inSeconds.toDouble();
            audioPosition = _printDuration(position);
          });
        }
        if (position != null &&
            duration != null &&
            position.inSeconds >= duration!.inSeconds) {
          positionTimer!.cancel();
        }
      });
    });
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(
      duration.inMinutes.remainder(60),
    );
    String twoDigitSeconds = twoDigits(
      duration.inSeconds.remainder(60),
    );
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isExpanded == true) {
          setState(() {
            isExpanded = false;
          });
        } else {
          setState(() {
            isExpanded = true;
          });
        }
      },
      child: Container(
        height: isExpanded != true ? 70 : 195,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 1, style: BorderStyle.solid, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.audio.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              Column(
                children: [
                  Slider(
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
                        : 1000.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        audioPosition,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        audioDuration,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      player.state == PlayerState.paused ||
                          player.state == PlayerState.completed
                          ? playAudioFromUrl(widget.audio.audio.filePath)
                          : player.pause();
                      setState(() {
                        player.state != PlayerState.playing
                            ? ppIcon = Icons.pause_circle
                            : ppIcon = Icons.play_circle;
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
          ],
        ),
      ),
    );
  }
}

Audios audiosFromJson(String str) => Audios.fromJson(json.decode(str));

String audiosToJson(Audios data) => json.encode(data.toJson());

class Audios {
  int statusCode;
  String message;
  List<AudioData> data;

  Audios({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory Audios.fromJson(Map<String, dynamic> json) => Audios(
    statusCode: json["statusCode"],
    message: json["message"],
    data: List<AudioData>.from(
        json["data"].map((x) => AudioData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

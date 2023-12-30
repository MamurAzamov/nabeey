import '../imports.dart';

Widget videoPlayer({required String url}) {
  var controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    flags: const YoutubePlayerFlags(autoPlay: false, mute: false, loop: false),
  );

  return YoutubePlayer(
    width: double.infinity,
    controller: controller,
    showVideoProgressIndicator: true,
    progressColors: const ProgressBarColors(
      playedColor: Color.fromRGBO(245, 156, 22, 1),
      handleColor: Color.fromRGBO(245, 156, 22, 1),
    ),
  );
}
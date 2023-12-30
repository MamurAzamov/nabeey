import '../imports.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});
  static const String id = 'video_page';

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return getScaffold(
      child: Expanded(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Muftiy Nuriddin Xoliqnazarov",
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate(10);
                    },
                    child: const Text(
                      "Barchasi",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(245, 156, 22, 1),
                        decorationThickness: 1.5,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Color.fromRGBO(245, 156, 22, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, top: 20, bottom: 20),
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          navigate(10);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/1f4f5258833053c3d8095e0e5abd4241b6bf1641"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Icon(
                              FontAwesome.play_circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "It is a long established fact",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "Lorem ipsum",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 24, left: 20, right: 20),
              height: 1,
              color: const Color.fromRGBO(0, 0, 0, 0.2),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Abdulloh domla",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate(10);
                    },
                    child: const Text(
                      "Barchasi",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromRGBO(245, 156, 22, 1),
                        decorationThickness: 1.5,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Color.fromRGBO(245, 156, 22, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, top: 20, bottom: 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 1),
                    Color.fromRGBO(0, 0, 0, 0.0),
                  ],
                ),
              ),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, i) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/7d25a268161be4ed1af43b485d04b2568157d19f"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Icon(
                            FontAwesome.play_circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "It is a long established fact",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "Lorem ipsum",
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

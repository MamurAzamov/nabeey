import '../imports.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  bool tapped = false;
  Map<String, String> pageData = offlineCategory[categoryId - 1];

  @override
  Widget build(BuildContext context) {
    return getScaffold(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height - 360,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.3,
          ),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            contentItem(
              name: 'Maqola',
              goTo: 5,
              icon: Feather.edit_3,
            ),
            contentItem(
              name: 'Video',
              goTo: 6,
              icon: Feather.youtube,
            ),
            contentItem(
              name: 'Audio',
              goTo: 7,
              icon: Feather.volume_2,
            ),
            contentItem(
              name: 'Kitob',
              goTo: 8,
              icon: Feather.book_open,
            ),
          ],
        ),
      ),
    );
  }

  Widget contentItem({
    required String name,
    required int goTo,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () {
        navigate(goTo);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 25, left: 20),
        width: (MediaQuery.of(context).size.width - 56) / 2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Transform.rotate(
                angle: -0.4,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    icon,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

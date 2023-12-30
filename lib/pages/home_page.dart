import '../imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int currentIndex = 0;
  static var pageController = StreamController<int>.broadcast();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        await navigate('back').then((value) => index == 0 ? exit(0) : null);
      },
      // onWillPop: () async {
      //   bool exit = false;
      //   navigate('back').then(
      //     (v) => index == 0 ? exit = true : exit = false,
      //   );
      //   return exit;
      // },
      child: StreamBuilder<int>(
        stream: pageController.stream,
        builder: (context, snapshot) {
          index = snapshot.data ?? 0;
          return Scaffold(
            body: const [
              CategoryPage(),
              QuizPage(),
              RatingPage(),
              ProfilePage(),
              ContentPage(),
              ArticlePage(),
              VideoPage(),
              AudioPage(),
              BookPage(),
              ArticleContent(),
              VideoContent(),
            ][index],
            bottomNavigationBar: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  selectedItemColor: const Color(0xFFF59C16),
                  unselectedItemColor: const Color.fromRGBO(17, 17, 17, 0.5),
                  showUnselectedLabels: true,
                  currentIndex: currentIndex,
                  onTap: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                    navigate(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Feather.home),
                      label: 'Asosiy',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Feather.help_circle),
                      label: 'Test',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Feather.activity),
                      label: 'Reyting',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Feather.user),
                      label: 'Profil',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Future navigate(to) async {
  int go = 0;
  if (to != 'back') {
    go = to;
  } else if (index > 4 && index < 9) {
    go = 4;
  } else if (index > 8 && index < 11) {
    go = index - 4;
  } else if (index < 4) {
    _HomePageState.currentIndex = index;
  }
  _HomePageState.pageController.sink.add(go);
}

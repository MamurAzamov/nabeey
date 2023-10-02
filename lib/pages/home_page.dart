import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nabeey_app/services/bloc_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List title = [
    'Payg\'ambarlikdan oldingi davr',
    'Payg\'ambarlikni boshlanishi',
    "Madinadagi davr"
  ];
  List description = [
    "Payg'ambarimiz Muhammad Sollallohu alayhi vasallamni dunyoga kelishlari va vahiy nozil bo'lishigacha bo'lgan davr",
    "Rosululloh Sollallohu alayhi vasallamga vahiy nozil bo'lishi va umumiy Makkadagi davrlari haqida",
    "Rosululloh Sollallohu alayhi vasallamni Madinaga hijratlari va Madinadagi davrlari"
  ];
  List images = [
    "assets/images/makkah.jpg",
    "assets/images/categoryy2.jpg",
    "assets/images/madina1.jpg"
  ];
  List navigateList = [
    NavigationEvent.navigateToCategoryPage,
    NavigationEvent.navigateToCategory2Page,
    NavigationEvent.navigateToCategory3Page,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nabeey',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return AspectRatio(
              aspectRatio: 1.4,
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context)
                      .add(navigateList[i]);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(images[i]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(0, 0, 0, 1),
                          Color.fromRGBO(0, 0, 0, 0.8),
                          Color.fromRGBO(0, 0, 0, 0.5),
                          Color.fromRGBO(0, 0, 0, 0.0),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                         Text(
                          description[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

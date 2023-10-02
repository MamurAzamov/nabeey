import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:nabeey_app/pages/articleInside.dart';
import 'package:nabeey_app/pages/signup_page.dart';

import '../services/bloc_service.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
  static const String id = "article";
}

class _ArticlePageState extends State<ArticlePage> {
  List description = [
    "Расулуллоҳ соллаллоҳу алайҳи васалламнинг туғилишлари Бисмиллаҳир Роҳманир Роҳийм...",
    "Ўспиринликлари Пайғамбаримиз (соллаллоҳу алайҳи ва саллам)  етим ўсдилар. Ҳали туғилмасларидан оталари...",
    "Пайғамбарлик аломатларидан Пайғамбарлик аломатларидан аввалгиси муборак кўкракларининг ёрилишидир...",
    "#МУАТТАР_СИЙРАТ Хадича розияллоҳу анҳога уйланганларидан пайғамбар бўлгунларига қадар бошларидан кечирганлари..."
  ];
  List images = [
    "assets/images/article.jpg",
    "assets/images/article1.jpg",
    "assets/images/article2.jpg",
    "assets/images/article3.jpg"
  ];
  List views = ["124", "96", "106", "67"];
  List navigateList = [
    NavigationEvent.navigateToArticleInside,
    NavigationEvent.navigateToArticlePage2,
    NavigationEvent.navigateToArticlePage3,
    NavigationEvent.navigateToArticlePage4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage("assets/images/makkah.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 1),
                    Color.fromRGBO(0, 0, 0, 0.9),
                    Color.fromRGBO(0, 0, 0, 0.8),
                    Color.fromRGBO(0, 0, 0, 0.1),
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvent.navigateToCategoryPage);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 15),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payg'ambarlikdan oldingi davr",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Payg'ambarimiz Muhammad Sollallohu alayhi vasallamni dunyoga kelishlari va vahiy nozil bo'lishigacha bo'lgan davr",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    height: 50,
                    width: 126,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(66),
                      color: const Color.fromRGBO(245, 158, 22, 1),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 22, right: 10, top: 5, bottom: 5),
                      child: const Center(
                        child: Text(
                          "Bilimingizni sinab ko'ring",
                          style: TextStyle(
                            //fontSize: 18,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                          ),
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
                itemCount: 4,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(navigateList[i]);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      height: 320,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xfff3f3f3),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(images[i]),
                                    fit: BoxFit.cover),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Payg'ambarlikdan oldingi davr",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  description[i],
                                  style: const TextStyle(
                                      //  overflow: TextOverflow.ellipsis,
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Feather.calendar,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      "30.09.2023",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 26,
                                    ),
                                    const Icon(
                                      Feather.eye,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(views[i],
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

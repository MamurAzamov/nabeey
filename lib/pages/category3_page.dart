import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:nabeey_app/services/bloc_service.dart';

class Category3Page extends StatefulWidget {
  const Category3Page({super.key});
  static const String id = 'category_page';

  @override
  State<Category3Page> createState() => _Category3PageState();
}

class _Category3PageState extends State<Category3Page> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    final navigationBloc = BlocProvider.of<NavigationBloc>(context);
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
                        onTap: (){
                          navigationBloc.add(NavigationEvent.navigateToHomePage);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 15),
                          child: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                        ),
                      ),
                      Container(
                        width: 180,
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
                                fontSize: 14,
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
                    height: 56,
                    width: 132,
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
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        tapped = true;
                      });
                      navigationBloc.add(NavigationEvent.navigateToArticlePage);
                      setState(() {
                        tapped = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      margin: const EdgeInsets.only(left: 20, top: 30),
                      height: 120,
                      width: (MediaQuery.of(context).size.width - 56) / 2,
                      decoration: BoxDecoration(
                        color: tapped ? Colors.orange : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Feather.edit_3),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Maqola",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigationBloc.add(NavigationEvent.navigateToVideoPage);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      margin: const EdgeInsets.only(right: 20, top: 30),
                      height: 120,
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
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Feather.youtube),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Video",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigationBloc.add(NavigationEvent.navigateToAudioPage);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      margin: const EdgeInsets.only(left: 20, top: 18),
                      height: 120,
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
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Feather.volume_2),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Audio",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigationBloc.add(NavigationEvent.navigateToBookPage);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      margin: const EdgeInsets.only(right: 20, top: 18),
                      height: 120,
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
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Feather.book_open),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Kitob",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

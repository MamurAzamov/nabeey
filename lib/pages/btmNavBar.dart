import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nabeey_app/services/bloc_service.dart';
import 'package:icons_flutter/icons_flutter.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({super.key});

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
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
              switch (index) {
                case 0:
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvent.navigateToHomePage);
                  break;
                case 1:
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvent.navigateToQuizPage);
                  break;
                case 2:
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvent.navigateToRatingPage);
                  break;
                case 3:
                  BlocProvider.of<NavigationBloc>(context)
                      .add(NavigationEvent.navigateToProfilePage);
                  break;
                default:
                  break;
              }
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
  }
}

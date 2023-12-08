import 'package:flutter/material.dart';
import 'package:sheet6/pages/page1.dart';
import 'package:sheet6/pages/page2.dart';
import 'package:sheet6/second_screen.dart';

import '../session_screen.dart';
import 'first_screen.dart';

class NaviButtoms extends StatefulWidget {
   NaviButtoms();

  @override
  State<NaviButtoms> createState() => _NaviButtomsState();
}


class _NaviButtomsState extends State<NaviButtoms> {

  int currentScreen =0;
  List<Widget> screens = [
    FirstScreen(),
    SecondScreen(),
    LastScreen(),
    PageOne(),
    PageTwo(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            setState(() {
              currentScreen=value;
            });
          },
          currentIndex: currentScreen,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation:0 ,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_filled,size: 35,),
                label: 'home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,size: 35,),
                label: 'Search'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.queue_play_next,size: 35,),
                label: 'reels'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined,size: 35,),
                label: 'home'
            ),
            BottomNavigationBarItem(
                icon: Container(width: 35,height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
                    child: Image.asset('assets/images/hooded-skull-hacker-logo-concept-vector-44777540.jpg',),clipBehavior: Clip.antiAliasWithSaveLayer),
                label: 'profile'
            ),
          ],
        ),
        body: screens[currentScreen],

      ),
    );
  }
}

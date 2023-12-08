import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:sheet6/pages/page1.dart';
import 'package:sheet6/pages/page2.dart';
import 'package:sheet6/pages/navigation.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

/* هندسه انا في السكرين دي انا عامل اني استدعيها من سكرين ال navigation علشان حاطط جواها كذا سكرين علشان اقدر اشغل الbottom navigation bar
*/


class _FirstScreenState extends State<FirstScreen> {
  // int currentScreen =0;
  // List<Widget> screens = [
  //   FirstScreen(),
  //   PageOne(),
  //   PageTwo(),
  //   PageThree(),
  //   NaviButtoms(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: (value){
      //     setState(() {
      //       currentScreen=value;
      //     });
      //   },
      //   currentIndex: currentScreen,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   elevation:0 ,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //  backgroundColor: Colors.black,
      //   items: [
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.black,
      //       icon: Icon(Icons.home_filled,size: 35,),
      //       label: 'home'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search,size: 35,),
      //         label: 'Search'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.queue_play_next,size: 35,),
      //         label: 'reels'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_basket_outlined,size: 35,),
      //         label: 'home'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Container(width: 35,height: 35,
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
      //           child: Image.asset('assets/images/hooded-skull-hacker-logo-concept-vector-44777540.jpg',),clipBehavior: Clip.antiAliasWithSaveLayer),
      //         label: 'profile'
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Instagram',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'NothingYouCouldDo',
            )),
        actions: [
          Icon(Icons.expand_more, size: 35),
          SizedBox(
            width: 97,
          ),
          Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.favorite_border,
                size: 32,
              ),
              PositionedDirectional(
                  top: 13,
                  width: 0,
                  child: Icon(
                    Icons.fiber_manual_record,
                    color: Colors.red,
                    size: 16,
                  ))
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Image.asset(
                  'assets/images/facebook-messenger.png',
                  width: 23,
                  height: 23,
                  color: Colors.white,
                ),
              ),
              PositionedDirectional(
                width: 20,
                top: 10,
                end: 7,
                child: Container(
                  width: 15,
                  height: 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    '6',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              )
            ],
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  height: 15,
                ),
                Row(
                    children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Image.network(
                        'https://wallpapers.com/images/hd/cool-profile-picture-ld8f4n1qemczkrig.jpg',
                        width: 40,
                        height: 40),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'double.coder',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                    size: 20,
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    height: 320,
                    child: Image.asset(
                        'assets/images/gebalyy.jpg'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.messenger_outline,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.send_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DotsIndicator(
                      position: 0,
                      dotsCount: 4,
                      decorator: DotsDecorator(
                          spacing: EdgeInsets.all(5), size: Size(4, 4)),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Icon(
                      Icons.bookmark_border,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pfizer.png',
                      width: 7,
                      height: 7,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'liked by',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'flutter deviser',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'and',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '44 others',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'double.coder',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        'Firebase in-App Messaging helps you engage your app\'s active users by sending them terget ...more',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'View 1 comment',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(7.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.network(
                  'https://wallpapers.com/images/hd/cool-profile-picture-ld8f4n1qemczkrig.jpg',
                  fit: BoxFit.cover,
                  width: 35,
                  height: 35),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            'Chats',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey.shade700,
              minRadius: 18,
              child: Icon(Icons.camera_alt, color: Colors.white, size: 25),
            ),
            SizedBox(
              width: 15,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade700,
              minRadius: 18,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: ListView(
          padding: EdgeInsetsDirectional.all(8),
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade700,
              ),
              child: InkWell(
                child: ListTile(
                    horizontalTitleGap: 0,
                    onTap: () {
                      print('Gebaly is here');
                    },
                    leading: Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    ),
                    title: Text(
                      'Search',
                      style: TextStyle(fontSize: 15),
                    ),
                    textColor: Colors.grey,
                    dense: true),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Category(color: Colors.white, text: 'kareem'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'Eslam'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'Ahmed'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'm7md'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'Omar'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'Menna'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'aya'),
                          SizedBox(
                            width: 20,
                          ),
                          Category(color: Colors.white, text: 'taha'),
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 1),
            SizedBox(
              height: 10,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,

                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryTwo(
                        color: Colors.white,
                        text: 'kareem helmy',
                        text2: 'the best'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Ahmed Fadlalla',
                        text2: 'Always with us '),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Taha Elgebaly',
                        text2: 'Ready to any challenge'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Gebaly',
                        text2: 'Welcome Dragon'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Gebaly ',
                        text2: 'Everywhere'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Youssef Elgebaly',
                        text2: 'Welcome to J.S'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'mohammed saad',
                        text2: 'Welcome to Assignment'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Assim Ayman',
                        text2: 'Welcome to Front-End'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'taha',
                        text2: 'you are the best'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'EraaSoft',
                        text2: 'more than center'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'AhmedFadlallah',
                        text2: 'thx bro'),
                    SizedBox(
                      height: 20,
                    ),
                    CategoryTwo(
                        color: Colors.white,
                        text: 'Kareem helmy',
                        text2: 'the best'),
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 2)
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.text, this.color});

  String? text;
  var color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Image.network(
              'https://wallpapers.com/images/hd/cool-profile-picture-ld8f4n1qemczkrig.jpg',
              width: 50,
              height: 50),
        ),
        Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    );
  }
}

class CategoryTwo extends StatelessWidget {
  CategoryTwo({this.text, this.color, this.text2});

  String? text;
  String? text2;
  var color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Image.network(
              'https://wallpapers.com/images/hd/cool-profile-picture-ld8f4n1qemczkrig.jpg',
              width: 50,
              height: 50),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text!,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text2!,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }
}

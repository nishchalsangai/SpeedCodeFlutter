import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui/data.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        //fontFamily: GoogleFonts.montserrat().fontFamily,
        canvasColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 2,
          showSelectedLabels: false,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(LineIcons.home, color: Colors.white), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.search, color: Colors.white),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.playCircle, color: Colors.white),
                label: "Reels"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.heart, color: Colors.white),
                label: "heart"),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.userCircle, color: Colors.white),
                label: "Profile")
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                textBaseline: TextBaseline.ideographic,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Image.asset(
                          'assets/instagram.png',
                          color: Colors.white,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(width: 10),
                        Transform.translate(
                          offset: const Offset(0.0, -3.5),
                          child: Transform.rotate(
                            angle: 335 * pi / 180,
                            child: Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                height: 115,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: StoryData),
                ),
              ),
              Container(
                height: 2.0,
                color: Colors.white.withOpacity(0.2),
              ),
              Expanded(
                  child: ListView(
                children: PostData,
              ))
            ],
          ),
        ));
  }
}

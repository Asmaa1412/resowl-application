import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/tips.dart';

import 'HomeScreen.dart';
import 'advBeginnerScreen.dart';
import 'advancedScreen.dart';
import 'noviceScreen.dart';
import 'subjectSreen.dart';

class SubLevelScreen extends StatelessWidget {
  const SubLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: SubLevelScreenF(),
    );
  }
}

class SubLevelScreenF extends StatefulWidget {
  const SubLevelScreenF({Key? key}) : super(key: key);

  @override
  State<SubLevelScreenF> createState() => _SubLevelScreenFState();
}

class _SubLevelScreenFState extends State<SubLevelScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: 490,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/flutter.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                CustomPaint(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    color: Color.fromARGB(80, 2, 190, 167),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios_new),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                          },
                        ),
                        SizedBox(
                          width: 310,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                            },
                            icon: Icon(
                              Icons.home_filled,
                              size: 30,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 7, 0, 0),
                      child: Text(
                        'Flutter',
                        style: GoogleFonts.gentiumBasic(
                            shadows: <Shadow>[
                              Shadow(
                                color: Color.fromARGB(255, 0, 60, 52),
                                offset: Offset(0.5, 0.5),
                                blurRadius: 3.0,
                              )
                            ],
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        'Mobile App ToolKit',
                        style: GoogleFonts.gentiumBasic(
                            shadows: <Shadow>[
                              Shadow(
                                color: Color.fromARGB(255, 0, 60, 52),
                                offset: Offset(0.5, 0.5),
                                blurRadius: 3.0,
                              )
                            ],
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(320, 70, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color.fromRGBO(245, 236, 224, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(30)),
                                width: 25,
                                height: 25,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(309, 60, 0, 0),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => TipsScreen()));
                                },
                                icon: Icon(
                                  Icons.chat_rounded,
                                  size: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                          child: Container(
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color.fromRGBO(245, 236, 224, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              width: 25,
                              height: 25,
                              child: FavoriteButton(
                                iconSize: 30.0,
                                isFavorite: false,
                                valueChanged: (_isFavorite) {},
                              )),
                        ),
                      ]),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 20, 0, 10),
                      child: Text(
                        'About Flutter :',
                        style: GoogleFonts.gentiumBasic(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 5, 30, 20),
                      child: Text(
                        'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
                        style: GoogleFonts.gentiumBasic(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Divider(
                      color: Color.fromARGB(100, 195, 190, 190),
                      thickness: 2.0,
                      indent: 30,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 18, 25, 25),
                      child: Text(
                        'Roadmap :',
                        style: GoogleFonts.gentiumBasic(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(150, 82, 142, 134)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 2, 2),
                            child: Container(
                              width: 230,
                              height: 230,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/image/road.jpeg',
                                      ),
                                      fit: BoxFit.cover),
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NoviceScreen()));
                        },
                        child: Container(
                            height: 80,
                            width: 360,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 167, 204, 214)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'I',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'Novice',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 170,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                      size: 14,
                                      Icons.arrow_forward_ios_outlined),
                                )
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AdvBScreen()));
                        },
                        child: Container(
                            height: 80,
                            width: 360,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 160, 222, 198)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'II',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'Adv-Begginer',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                      size: 14,
                                      Icons.arrow_forward_ios_outlined),
                                )
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AdvncedScreen()));
                        },
                        child: Container(
                            height: 80,
                            width: 360,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 184, 209, 215)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  'III',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'Advanced',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                      size: 14,
                                      Icons.arrow_forward_ios_outlined),
                                )
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}

class AdvBScreenScreen {}

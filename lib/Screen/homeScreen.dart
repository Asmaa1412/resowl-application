import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about_us_screen.dart';
import 'package:resowl/Screen/editProfileScreen.dart';
import 'package:resowl/Screen/favoredScreen.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:resowl/Screen/registrationScreen.dart';

import 'resourceScreen.dart';
import 'sub-levelScreen.dart';
import 'subjectSreen.dart';

class HomeScreenF extends StatefulWidget {
  const HomeScreenF({Key? key}) : super(key: key);

  @override
  State<HomeScreenF> createState() => _HomeScreenFState();
}

class _HomeScreenFState extends State<HomeScreenF> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreenF()));
                    },
                    icon: Icon(
                      Icons.home_filled,
                      size: 30,
                      color: Colors.black,
                    )),
              ],
            ),
            drawer: Drawer(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/image/5.png'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AboutUsScreenF()));
                                    },
                                    child: Text(
                                      'Resowl',
                                      style: GoogleFonts.gentiumBasic(
                                          color:
                                              Color.fromARGB(255, 2, 137, 121),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AboutUsScreenF()));
                                    },
                                    child: Text(
                                      'A good resource for you',
                                      style: GoogleFonts.gentiumBasic(
                                          color: Color.fromARGB(
                                              255, 125, 129, 128),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ])),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Color.fromARGB(100, 158, 155, 155),
                          thickness: 2.0,
                          indent: 0,
                          endIndent: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AboutUsScreenF()));
                                },
                                child: Text(
                                  'About Us',
                                  style: GoogleFonts.gentiumBasic(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          EditProfileScreen()));
                                },
                                child: Text(
                                  'Edit Profile',
                                  style: GoogleFonts.gentiumBasic(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => FavoredScreen()));
                                },
                                child: Text(
                                  'Favored',
                                  style: GoogleFonts.gentiumBasic(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  FirebaseAuth.instance.signOut().then(
                                    (value) {
                                      print("sign out");
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SplashScreen()));
                                    },
                                  );
                                },
                                child: Text(
                                  'Log Out',
                                  style: GoogleFonts.gentiumBasic(
                                      color: Color.fromARGB(255, 36, 150, 137),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                )),
            body: Container(
              color: Colors.white,
              child: Column(children: [
                Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        width: 490,
                        height: 250,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffDDDDDD),
                                offset: Offset(0.0, 0.0),
                                blurRadius: 6.0,
                                spreadRadius: 2.0),
                          ],
                          image: DecorationImage(
                              image: AssetImage('assets/image/back.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      CustomPaint(
                        child: Container(
                          width: double.infinity,
                          height: 250,
                          color: Color.fromARGB(52, 2, 190, 167),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                        child: CustomPaint(
                          child: Container(
                            width: 200,
                            height: 36,
                            color: Color.fromARGB(150, 0, 60, 52),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 86, 0, 0),
                            child: Text(
                              'Welcome',
                              style: GoogleFonts.gentiumBasic(
                                  color: Color.fromARGB(255, 255, 252, 242),
                                  fontSize: 37,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Text(
                              'Are you ready ?',
                              style: GoogleFonts.gentiumBasic(
                                  color: Color.fromARGB(255, 38, 32, 32),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(13, 17, 0, 0),
                            child: Text(
                              'New Subjets:',
                              style: GoogleFonts.gentiumBasic(
                                  color: Color.fromARGB(255, 38, 32, 32),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 140,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(13, 10, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SubLevelScreenF()));
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 115,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              100, 0, 60, 52),
                                                          blurRadius: 7.0,
                                                          spreadRadius: 1.0,
                                                          offset: Offset(
                                                            -5,
                                                            5,
                                                          ),
                                                        ),
                                                      ],
                                                      border: Border.all(
                                                          width: 0.7,
                                                          color: Color.fromARGB(
                                                              255,
                                                              103,
                                                              103,
                                                              103))),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 260,
                                                          height: 64,
                                                          decoration:
                                                              BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/image/git.jpg'),
                                                                fit: BoxFit
                                                                    .fitWidth),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          6,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Text(
                                                                  'Git Sub',
                                                                  style: GoogleFonts.gentiumBasic(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          7,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Text(
                                                                      'Version control\nsystem',
                                                                      style: GoogleFonts
                                                                          .gentiumBasic(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 20,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Icon(
                                                                      size: 9,
                                                                      Icons
                                                                          .arrow_forward_ios_outlined),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 25,
                                                        ),
                                                      ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(13, 10, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SubLevelScreenF()));
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 115,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              100, 0, 60, 52),
                                                          blurRadius: 7.0,
                                                          spreadRadius: 1.0,
                                                          offset: Offset(
                                                            -5,
                                                            5,
                                                          ),
                                                        ),
                                                      ],
                                                      border: Border.all(
                                                          width: 0.7,
                                                          color: Color.fromARGB(
                                                              255,
                                                              103,
                                                              103,
                                                              103))),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 260,
                                                          height: 64,
                                                          decoration:
                                                              BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/image/flutter.png'),
                                                                fit: BoxFit
                                                                    .fitWidth),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          6,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Text(
                                                                  'Flutter Sub',
                                                                  style: GoogleFonts.gentiumBasic(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          7,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Text(
                                                                      'Mobile App\nToolKit',
                                                                      style: GoogleFonts
                                                                          .gentiumBasic(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 45,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Icon(
                                                                      size: 9,
                                                                      Icons
                                                                          .arrow_forward_ios_outlined),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 25,
                                                        ),
                                                      ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(13, 10, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SubLevelScreenF()));
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 115,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              100, 0, 60, 52),
                                                          blurRadius: 7.0,
                                                          spreadRadius: 1.0,
                                                          offset: Offset(
                                                            -5,
                                                            5,
                                                          ),
                                                        ),
                                                      ],
                                                      border: Border.all(
                                                          width: 0.7,
                                                          color: Color.fromARGB(
                                                              255,
                                                              103,
                                                              103,
                                                              103))),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 260,
                                                          height: 64,
                                                          decoration:
                                                              BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/image/c++.jpg'),
                                                                fit: BoxFit
                                                                    .fitWidth),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          6,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Text(
                                                                  'C++ Sub',
                                                                  style: GoogleFonts.gentiumBasic(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          7,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Text(
                                                                      'Programming\nLanguage',
                                                                      style: GoogleFonts
                                                                          .gentiumBasic(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 30,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Icon(
                                                                      size: 9,
                                                                      Icons
                                                                          .arrow_forward_ios_outlined),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 25,
                                                        ),
                                                      ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(13, 10, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SubLevelScreenF()));
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 115,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              100, 0, 60, 52),
                                                          blurRadius: 7.0,
                                                          spreadRadius: 1.0,
                                                          offset: Offset(
                                                            -5,
                                                            5,
                                                          ),
                                                        ),
                                                      ],
                                                      border: Border.all(
                                                          width: 0.7,
                                                          color: Color.fromARGB(
                                                              255,
                                                              103,
                                                              103,
                                                              103))),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          width: 260,
                                                          height: 64,
                                                          decoration:
                                                              BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    'assets/image/flutter.png'),
                                                                fit: BoxFit
                                                                    .fitWidth),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          6,
                                                                          5,
                                                                          0,
                                                                          0),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Text(
                                                                  'Flutter Sub',
                                                                  style: GoogleFonts.gentiumBasic(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          13),
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          7,
                                                                          2,
                                                                          0,
                                                                          0),
                                                                  child: Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Text(
                                                                      'Mobile App\nToolKit',
                                                                      style: GoogleFonts
                                                                          .gentiumBasic(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 45,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Icon(
                                                                      size: 9,
                                                                      Icons
                                                                          .arrow_forward_ios_outlined),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: 25,
                                                        ),
                                                      ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(330, 0, 0, 0),
                                child: SizedBox(
                                  height: 30,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SubjectScreenF()));
                                    },
                                    child: Text(
                                      'See More',
                                      style: GoogleFonts.gentiumBasic(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Our Subjects :',
                      style: GoogleFonts.gentiumBasic(
                        color: Colors.black,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(270, 0, 0, 0),
                  child: SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SubjectScreenF()));
                      },
                      child: Text(
                        'See More',
                        style: GoogleFonts.gentiumBasic(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 375,
                        child: ListView(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SubLevelScreenF()));
                              },
                              child: Container(
                                  height: 95,
                                  color: Color.fromARGB(255, 204, 204, 214),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image/c++.jpg'),
                                                fit: BoxFit.fill)),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'C++ programming\nlanguage',
                                        style: GoogleFonts.gentiumBasic(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 60, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SubLevelScreenF()));
                              },
                              child: Container(
                                  height: 95,
                                  color: Color.fromARGB(255, 160, 222, 198),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image/flutter.png'),
                                                fit: BoxFit.fill)),
                                      ),
                                      SizedBox(
                                        width: 22,
                                      ),
                                      Text(
                                        'Flutter mobile app\ntoolkit',
                                        style: GoogleFonts.gentiumBasic(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 60, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SubLevelScreenF()));
                              },
                              child: Container(
                                  height: 95,
                                  color: Color.fromARGB(255, 184, 209, 215),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image/git.jpg'),
                                                fit: BoxFit.fill)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Git Version control\nsystem',
                                        style: GoogleFonts.gentiumBasic(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 60, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SubLevelScreenF()));
                              },
                              child: Container(
                                  height: 95,
                                  color: Color.fromARGB(255, 204, 204, 214),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image/c++.jpg'),
                                                fit: BoxFit.fill)),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'C++ programming\nlanguage',
                                        style: GoogleFonts.gentiumBasic(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(70, 60, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                          ],
                        )),
                  ),
                ),
              ]),
            )));
  }
}

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/beginnersScreen.dart';
import 'package:resowl/resourceScreen.dart';
import 'HomeScreen.dart';
import 'sub-levelScreen.dart';
import 'tips.dart';

int indexx = 0;

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: AuthorScreenF(),
    );
  }
}

class AuthorScreenF extends StatefulWidget {
  const AuthorScreenF({Key? key}) : super(key: key);

  @override
  State<AuthorScreenF> createState() => _AuthorScreenFState();
}

class _AuthorScreenFState extends State<AuthorScreenF> {
  void Findexx(int ind) {
    setState(() {
      indexx = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: 490,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/backk.jpg'),
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
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ResourceSacreen()));
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
                  padding: const EdgeInsets.fromLTRB(24, 0, 30, 30),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 55.0,
                              backgroundImage: AssetImage(
                                'assets/image/face.png',
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  'Kevin D.Moore',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 23,
                                      color: Color.fromARGB(255, 21, 39, 68)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'raywnderlich team',
                                  style: GoogleFonts.gentiumBasic(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 21, 39, 68)),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.library_books_outlined,
                          size: 17,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '4 Roadmap',
                          style: GoogleFonts.gentiumBasic(
                              fontSize: 15,
                              color: Color.fromARGB(255, 21, 39, 68)),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 15, 40, 15),
                      child: Text(
                        'Michael Katz envisions a world where mobile apps always work, respect users’ privacy, and integrate well with their users’ life. When not coding, he can be found with his family playing board games, brewing, gardening, and watching the Yankees.',
                        style: GoogleFonts.gentiumBasic(
                            fontSize: 14,
                            color: Color.fromARGB(255, 21, 39, 68)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 320, 15),
                      child: Text(
                        'Subjects:',
                        style: GoogleFonts.gentiumBasic(fontSize: 16),
                      ),
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.spaceAround,
                      children: <Widget>[
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SubLevelScreen()));
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
                                                  255, 103, 103, 103))),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 260,
                                              height: 64,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/image/flutter.png'),
                                                    fit: BoxFit.fitWidth),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      6, 5, 0, 0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Flutter Sub',
                                                      style: GoogleFonts
                                                          .gentiumBasic(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              7, 2, 0, 0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          'Mobile App\nToolKit',
                                                          style: GoogleFonts
                                                              .gentiumBasic(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 45,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
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
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SubLevelScreen()));
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
                                                  255, 103, 103, 103))),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 260,
                                              height: 64,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/image/git.jpg'),
                                                    fit: BoxFit.fitWidth),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      6, 5, 0, 0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Git Sub',
                                                      style: GoogleFonts
                                                          .gentiumBasic(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              7, 2, 0, 0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          'Mobile App\nToolKit',
                                                          style: GoogleFonts
                                                              .gentiumBasic(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 45,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
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
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SubLevelScreen()));
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
                                                  255, 103, 103, 103))),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 260,
                                              height: 64,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/image/c++.jpg'),
                                                    fit: BoxFit.fitWidth),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      6, 5, 0, 0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'C++ Sub',
                                                      style: GoogleFonts
                                                          .gentiumBasic(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              7, 2, 0, 0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          'Mobile App\nToolKit',
                                                          style: GoogleFonts
                                                              .gentiumBasic(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 45,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
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
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SubLevelScreen()));
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
                                                  255, 103, 103, 103))),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 260,
                                              height: 64,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/image/sql.jpg'),
                                                    fit: BoxFit.fitWidth),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      6, 5, 0, 0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'SQL Sub',
                                                      style: GoogleFonts
                                                          .gentiumBasic(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              7, 2, 0, 0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          'Mobile App\nToolKit',
                                                          style: GoogleFonts
                                                              .gentiumBasic(
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 45,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
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
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

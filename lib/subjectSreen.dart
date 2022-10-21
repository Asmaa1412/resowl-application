import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';
import 'sub-levelScreen.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Subject Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: SubjectScreenF(),
    );
  }
}

class SubjectScreenF extends StatefulWidget {
  const SubjectScreenF({Key? key}) : super(key: key);

  @override
  State<SubjectScreenF> createState() => _SubjectScreenFState();
}

class _SubjectScreenFState extends State<SubjectScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 167, 148),
          elevation: 5.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          title: Padding(
            padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
            child: Text(
              'Our Cources',
              style: GoogleFonts.gentiumBasic(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 23),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                  color: Colors.white,
                )),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.spaceAround,
                    children: [
                      Container(
                        child: SizedBox(
                          width: 400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/flutter.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'Flutter Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/git.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 35, 0),
                              child: Text(
                                'Git Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/c++.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'C++ Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/kotlin.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'Kotlin Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/flutter.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'Flutter Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/image/c#.png'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'C# Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/sql.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'SQL Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/git.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'Git Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SubLevelScreen()));
                        },
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/python.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Stack(children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: 93,
                                            height: 9,
                                            decoration:
                                                BoxDecoration(boxShadow: [
                                              BoxShadow(
                                                color: Colors.black,
                                                blurRadius: 15.0,
                                              )
                                            ])),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            85, 120, 0, 0),
                                        child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            width: 26,
                                            height: 26,
                                            child: FavoriteButton(
                                              isFavorite: false,
                                              iconSize: 30,
                                              valueChanged: (_isFavorite) {},
                                            )),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' Free',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 30, 0),
                              child: Text(
                                'Python Sub',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

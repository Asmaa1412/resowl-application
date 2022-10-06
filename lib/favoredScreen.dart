import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/registrationScreen.dart';

import 'HomeScreen.dart';
import 'aboutUsScreen.dart';
import 'editProfileScreen.dart';
import 'sub-levelScreen.dart';

int indexx = 0;

class FavoredScreen extends StatelessWidget {
  const FavoredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: FavoredScreenF(),
    );
  }
}

class FavoredScreenF extends StatefulWidget {
  const FavoredScreenF({Key? key}) : super(key: key);

  @override
  State<FavoredScreenF> createState() => _FavoredScreenFState();
}

class _FavoredScreenFState extends State<FavoredScreenF> {
  void Findexx(int ind) {
    setState(() {
      indexx = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                                      image: AssetImage('assets/image/5.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AboutUsScreen()));
                                },
                                child: Text(
                                  'Resowl',
                                  style: GoogleFonts.gentiumBasic(
                                      color: Color.fromARGB(255, 2, 137, 121),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => AboutUsScreen()));
                                },
                                child: Text(
                                  'A good resource for you',
                                  style: GoogleFonts.gentiumBasic(
                                      color: Color.fromARGB(255, 125, 129, 128),
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
                                  builder: (context) => AboutUsScreen()));
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
                                  builder: (context) => EditProfileScreen()));
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegistrationScreen()));
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
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 167, 148),
          elevation: 5.0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Padding(
            padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
            child: Text(
              'Favored',
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

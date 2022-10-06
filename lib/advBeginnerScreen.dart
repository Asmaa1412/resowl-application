import 'package:favorite_button/favorite_button.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/resourceScreen.dart';

import 'HomeScreen.dart';
import 'sub-levelScreen.dart';

int indexx = 0;

class AdvBScreen extends StatelessWidget {
  const AdvBScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: AdvBScreenF(),
    );
  }
}

class AdvBScreenF extends StatefulWidget {
  const AdvBScreenF({Key? key}) : super(key: key);

  @override
  State<AdvBScreenF> createState() => _AdvBScreenFState();
}

class _AdvBScreenFState extends State<AdvBScreenF> {
  void Findexx(int ind) {
    setState(() {
      indexx = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      color: Color.fromARGB(80, 2, 190, 167),
      child: Column(children: [
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
                height: 250,
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
                              builder: (context) => SubLevelScreen()));
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
                      'Adv-Beginner',
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
                      'Every expert was once a \nbeginner.',
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
                ]),
          ],
        ),
        Expanded(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: ListView(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResourceSacreen()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/flutter.png',
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice\n(First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResourceSacreen()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/flutter.png',
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResourceSacreen()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/flutter.png',
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResourceSacreen()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/flutter.png',
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResourceSacreen()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/flutter.png',
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 17,
                                          ),
                                          Text('5')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
        ),
      ]),
    )));
  }
}

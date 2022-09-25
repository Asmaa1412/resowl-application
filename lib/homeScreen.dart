import 'package:flutter/material.dart';
import 'package:resowl/aboutUsScreen.dart';

import 'resourceScreen.dart';
import 'sub-levelScreen.dart';
import 'subjectSreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: HomeScreenF(),
    );
  }
}

class HomeScreenF extends StatefulWidget {
  const HomeScreenF({Key? key}) : super(key: key);

  @override
  State<HomeScreenF> createState() => _HomeScreenFState();
}

class _HomeScreenFState extends State<HomeScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 255, 252, 242),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AboutUsScreen()));
                  },
                  child: Image.asset(
                    'assets/image/5.png',
                    scale: 2,
                  ),
                ),
              ],
            ),
            body: Container(
              color: Color.fromARGB(255, 255, 252, 242),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          width: 330,
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
                                  image: AssetImage('assets/image/green.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            'New Subject',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 252, 242),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 60, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SubLevelScreen()));
                            },
                            child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/flutter.png'),
                                      fit: BoxFit.cover),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(245, 60, 0, 0),
                          child: Container(
                              width: 120,
                              height: 120,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SubLevelScreen()));
                                },
                                icon: Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 190, 0, 0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 252, 242),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 210, 0, 0),
                          child: Text(
                            'amet, consectetur adipiscing',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 252, 242),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'Our Subjects :',
                          style: TextStyle(
                              color: Color.fromARGB(210, 135, 193, 152),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(150, 10, 0, 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SubjectScreen()));
                                },
                                child: Text(
                                  'See More >',
                                  style: TextStyle(
                                      color: Color.fromARGB(210, 203, 227, 210),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 600,
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
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
                                child: Container(
                                  width: 93,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 215, 206, 206),
                                        blurRadius: 7.0,
                                        spreadRadius: 1.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/image/git.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          width: 93,
                                          height: 9,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 64, 63, 63),
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          width: 93,
                                          height: 9,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 207, 149, 149),
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Flutter Sub',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
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
                                child: Container(
                                  width: 93,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 215, 206, 206),
                                        blurRadius: 7.0,
                                        spreadRadius: 1.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/image/c++.jpg'),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          width: 93,
                                          height: 9,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 207, 149, 149),
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          width: 93,
                                          height: 9,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Flutter Sub',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
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
                                child: Container(
                                  width: 93,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 215, 206, 206),
                                        blurRadius: 7.0,
                                        spreadRadius: 1.0,
                                      ),
                                    ],
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 207, 149, 149),
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          width: 93,
                                          height: 9,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'C# Sub',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
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
                                child: Container(
                                  width: 93,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 215, 206, 206),
                                        blurRadius: 7.0,
                                        spreadRadius: 1.0,
                                      ),
                                    ],
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 207, 149, 149),
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          width: 93,
                                          height: 9,
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        'Flutter Sub',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 270,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffDDDDDD),
                                offset: Offset(0.0, 0.0),
                                blurRadius: 6.0,
                                spreadRadius: 2.0),
                          ],
                          image: DecorationImage(
                              image: AssetImage('assets/image/green.jpg'),
                              fit: BoxFit.none),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'Most Favored :',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 252, 242),
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            150, 10, 0, 0),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SubjectScreen()));
                                          },
                                          child: Text(
                                            'See More >',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 252, 242),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 600,
                              height: 150,
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
                                                        SubLevelScreen()));
                                          },
                                          child: Container(
                                            width: 93,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 215, 206, 206),
                                                  blurRadius: 7.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image/python.jpg'),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Stack(children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    207,
                                                                    149,
                                                                    149),
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  'Python Sub',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
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
                                                        SubLevelScreen()));
                                          },
                                          child: Container(
                                            width: 93,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 215, 206, 206),
                                                  blurRadius: 7.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image/c++.jpg'),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Stack(children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    207,
                                                                    149,
                                                                    149),
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  'C++ Sub',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
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
                                                        SubLevelScreen()));
                                          },
                                          child: Container(
                                            width: 93,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 215, 206, 206),
                                                  blurRadius: 7.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image/c#.png'),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Stack(children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    207,
                                                                    149,
                                                                    149),
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  'C# Sub',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
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
                                                        SubLevelScreen()));
                                          },
                                          child: Container(
                                            width: 93,
                                            height: 110,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 215, 206, 206),
                                                  blurRadius: 7.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/image/c++.jpg'),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Stack(children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    207,
                                                                    149,
                                                                    149),
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                    width: 93,
                                                    height: 9,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black,
                                                            blurRadius: 15.0,
                                                          )
                                                        ])),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  'C++ Sub',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            )));
  }
}

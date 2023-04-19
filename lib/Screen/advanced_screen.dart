import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/Screen/resourceScreen.dart';
import 'package:resowl/util/image.dart';

import 'homeScreen.dart';


int indexx = 0;

class AdvncedScreenF extends StatefulWidget {
  const AdvncedScreenF({Key? key}) : super(key: key);

  @override
  State<AdvncedScreenF> createState() => _AdvncedScreenFState();
}

class _AdvncedScreenFState extends State<AdvncedScreenF> {
  void fIndex(int ind) {
    setState(() {
      indexx = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      color: const Color.fromARGB(80, 2, 190, 167),
      child: Column(children: [
        Stack(
          children: [
            Container(
              width: 490,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/flutter.png'),
                    fit: BoxFit.cover),
              ),
            ),
            CustomPaint(
              child: Container(
                width: double.infinity,
                height: 250,
                color: const Color.fromARGB(80, 2, 190, 167),
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 310,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreenF()));
                          },
                          icon: const Icon(
                            Icons.home_filled,
                            size: 30,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 7, 0, 0),
                    child: Text(
                      'Advanced',
                      style: GoogleFonts.gentiumBasic(
                          shadows: <Shadow>[
                            const Shadow(
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
                      'Every accomplishment starts\nwith the decision to try.',
                      style: GoogleFonts.gentiumBasic(
                          shadows: <Shadow>[
                            const Shadow(
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
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ResourceSacreenF()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  ImagePath.flutterBook,
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice\n(First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: const Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    const SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: const [
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
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
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
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ResourceSacreenF()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  ImagePath.flutterBook,
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: const Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    const SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: const [
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
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
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
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ResourceSacreenF()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  ImagePath.flutterBook,
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: const Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    const SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: const [
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
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
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
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ResourceSacreenF()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  ImagePath.flutterBook,
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: const Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    const SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: const [
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
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
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
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ResourceSacreenF()));
                            },
                            child: Container(
                              height: 75,
                              width: 390,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  ImagePath.flutterBook,
                                  width: 50,
                                ),
                                title: const Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: const Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    const SizedBox(height: 13),
                                    Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.white),
                                      child: Row(
                                        children: const [
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
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
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

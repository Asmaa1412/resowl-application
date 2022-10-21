import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/authorScreen.dart';
import 'package:resowl/beginnersScreen.dart';

import 'HomeScreen.dart';
import 'tips.dart';

int indexx = 0;

class ResourceSacreen extends StatelessWidget {
  const ResourceSacreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resource Sacreen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: ResourceSacreenF(),
    );
  }
}

class ResourceSacreenF extends StatefulWidget {
  const ResourceSacreenF({Key? key}) : super(key: key);

  @override
  State<ResourceSacreenF> createState() => _ResourceSacreenFState();
}

class _ResourceSacreenFState extends State<ResourceSacreenF> {
  void Findexx(int ind) {
    setState(() {
      indexx = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      Container(
        width: 490,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/backk.jpg'), fit: BoxFit.cover),
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
                      builder: (context) => BeginnerScreen()));
                },
              ),
              SizedBox(
                width: 310,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  icon: Icon(
                    Icons.home_filled,
                    size: 30,
                    color: Colors.black,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 30, 0),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/book.jfif'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Flutter \nApprentice \nto Build Apps',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 25, color: Color.fromARGB(255, 21, 39, 68)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'By Lorem Ispum',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 13, color: Color.fromARGB(255, 21, 39, 68)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                        ),
                        Container(
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
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
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: SingleChildScrollView(
              child: Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(35, 20, 25, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Flutter Apprentice (First Edition): Learn to Build Cross-Platform Apps',
                          style: GoogleFonts.gentiumBasic(
                              fontSize: 19,
                              color: Color.fromARGB(255, 21, 39, 68)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.library_books_outlined,
                              size: 17,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '400 Pages',
                              style: GoogleFonts.gentiumBasic(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 21, 39, 68)),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              ' \$',
                              style: GoogleFonts.gentiumBasic(
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 21, 39, 68)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Free',
                              style: GoogleFonts.gentiumBasic(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 21, 39, 68)),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 249, 243, 243)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RatingBar(
                                    itemSize: 30,
                                    ratingWidget: RatingWidget(
                                        empty: Icon(
                                          Icons.star_border,
                                          color: Colors.amber,
                                        ),
                                        full: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        half: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )),
                                    minRating: 0,
                                    maxRating: 5,
                                    initialRating: 0,
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 40, 15),
                          child: Text(
                            'Flutter is an exciting development toolkit that lets you build apps for iOS, Android and even web and desktop, all from a single codebase.',
                            style: GoogleFonts.gentiumBasic(
                                fontSize: 14,
                                color: Color.fromARGB(255, 21, 39, 68)),
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(100, 158, 155, 155),
                          thickness: 2.0,
                          indent: 7,
                          endIndent: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.link,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                                style: GoogleFonts.gentiumBasic(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 57, 56, 69)),
                                'https://dartpad.dev/?')
                          ],
                        ),
                        Divider(
                          color: Color.fromARGB(100, 158, 155, 155),
                          thickness: 2.0,
                          indent: 7,
                          endIndent: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AuthorScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Stack(
                              children: [
                                CustomPaint(
                                  child: Container(
                                    width: 400,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Color.fromARGB(255, 167, 204, 214),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 30, 0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      CircleAvatar(
                                        radius: 40.0,
                                        backgroundImage: AssetImage(
                                          'assets/image/face.png',
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            'Kevin D.Moore',
                                            style: GoogleFonts.gentiumBasic(
                                                fontSize: 23,
                                                color: Color.fromARGB(
                                                    255, 21, 39, 68)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'raywnderlich team',
                                            style: GoogleFonts.gentiumBasic(
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 21, 39, 68)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                180, 0, 0, 0),
                                            child: Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 15,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    ])));
  }
}

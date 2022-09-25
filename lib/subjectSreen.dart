import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'sub-levelScreen.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
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
          backgroundColor: Color.fromARGB(255, 255, 252, 242),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Image.asset(
                'assets/image/5.png',
                scale: 2,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              color: Color.fromARGB(255, 255, 252, 242),
              child: SingleChildScrollView(
                child: Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.spaceAround,
                    children: [
                      Container(
                        child: SizedBox(
                          width: 400,
                          height: 1,
                        ),
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SubLevelScreen()));
                                  },
                                  child: Container(
                                    width: 115,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/book.jfif'),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 3, 10, 0),
                            child: Text(
                              'Flutter Sub',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
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

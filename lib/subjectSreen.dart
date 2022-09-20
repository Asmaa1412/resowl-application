import 'package:flutter/material.dart';

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
          onPressed: () {},
          icon: Icon(Icons.list),
        ),
        actions: [
          Image.asset(
            'assets/image/5.png',
//scale: 2,
          ),
        ],
      ),
      body: Stack(children: [
        Container(
          color: Color.fromARGB(255, 255, 252, 242),
        ),
        Center(
          child: Container(
            height: 650,
            width: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/green.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: SingleChildScrollView(
              child: Wrap(
                runSpacing: 20.0,
                alignment: WrapAlignment.spaceAround,
                children: [
                  Container(
                    child: SizedBox(
                      width: 400,
                      height: 1,
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 93,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('image/book.jfif'),
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
                    ],
                  ),
                ],
                direction: Axis.horizontal,
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}

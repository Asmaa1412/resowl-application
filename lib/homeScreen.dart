import 'package:flutter/material.dart';

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
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.list),
              ),
              actions: [
                Image.asset(
                  'image/5.png',
                  scale: 2,
                ),
              ],
            ),
            body: Container(
              color: Color.fromARGB(255, 255, 252, 242),
              child: Column(children: [
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        width: 410,
                        height: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('image/green.jpg'),
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
                        child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage('image/flutter.png'),
                                  fit: BoxFit.cover),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(320, 60, 0, 0),
                        child: Container(
                            width: 120,
                            height: 120,
                            child: IconButton(
                              onPressed: () {},
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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing',
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
                      SizedBox(
                        width: 250,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See More >',
                          style: TextStyle(
                              color: Color.fromARGB(210, 135, 193, 152),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/green.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Most Favored :',
                        style: TextStyle(
                            color: Color.fromARGB(210, 135, 193, 152),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 240,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See More >',
                          style: TextStyle(
                              color: Color.fromARGB(210, 135, 193, 152),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/green.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                      SizedBox(
                        width: 30,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 93,
                              height: 110,
                              decoration: BoxDecoration(
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
                  ),
                ),
              ]),
            )));
  }
}

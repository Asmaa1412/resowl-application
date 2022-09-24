import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

int indexx = 0;

class FavoredScreen extends StatelessWidget {
  const FavoredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 252, 242),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.list),
          ),
          actions: [
            Image.asset(
              'assets/image/5.png',
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
                      SizedBox(
                        width: 400,
                        height: 1,
                      ),
                      Column(
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
                                            'assets/image/book.jfif'),
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
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 15.0,
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 135, 0, 0),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 236, 224, 1),
                                              border: Border.all(
                                                color: Color.fromRGBO(
                                                    245, 236, 224, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: 15,
                                          height: 15,
                                          child: FavoriteButton(
                                            iconSize: 30.0,
                                            isFavorite: true,
                                            valueChanged: (_isFavorite) {},
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        ' Free',
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

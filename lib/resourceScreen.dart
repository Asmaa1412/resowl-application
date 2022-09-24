import 'package:favorite_button/favorite_button.dart';

import 'package:flutter/material.dart';

int indexx = 0;

class ResourceSacreen extends StatelessWidget {
  const ResourceSacreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
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
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 252, 242),
            child: Column(children: [
              SizedBox(
                height: 450,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 15, 0),
                child: Text(
                    style: TextStyle(fontSize: 23),
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing commodo elit at imperdiet. Senectus et netus et malesuada fames. '),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.link,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                      style: TextStyle(
                          fontSize: 20, decoration: TextDecoration.underline),
                      'https://dartpad.dev/?')
                ],
              )
            ]),
          ),
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 120.0),
              ),
              color: Color.fromARGB(255, 174, 199, 167),
              image: DecorationImage(
                  image: AssetImage('assets/image/green.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 270),
                  Image.asset(
                    'assets/image/5.png',
                    scale: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/book.jfif'),
                              fit: BoxFit.cover),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(270, 165, 0, 0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 236, 224, 1),
                            border: Border.all(
                              color: Color.fromRGBO(245, 236, 224, 1),
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        width: 35,
                        height: 35,
                        child: FavoriteButton(
                          iconSize: 30.0,
                          isFavorite: true,
                          valueChanged: (_isFavorite) {},
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 9, 155, 0),
                        child: Text(
                          'Flutter Book',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Icon(Icons.library_books_outlined),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            'Pages : 400',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            ' \$',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            'Free',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            '66',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}

                 
              /* Expanded(
                      child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 252, 242),
                )),
                    )*/
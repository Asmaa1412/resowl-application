import 'dart:ffi';

import 'package:flutter/material.dart';

class SubLevelScreen extends StatelessWidget {
  const SubLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: SubLevelScreenF(),
    );
  }
}

class SubLevelScreenF extends StatefulWidget {
  const SubLevelScreenF({Key? key}) : super(key: key);

  @override
  State<SubLevelScreenF> createState() => _SubLevelScreenFState();
}

class _SubLevelScreenFState extends State<SubLevelScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Color.fromARGB(255, 174, 199, 167),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
              actions: [
                Image.asset(
                  'assets/image/5.png',
                  scale: 2,
                ),
              ],
            ),
            body: Container(
              color: Color.fromARGB(255, 174, 199, 167),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 150,
                      height: 155,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/flutter.png'),
                              fit: BoxFit.fill),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Flutter',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 252, 242),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: ListView(
                          padding: EdgeInsets.fromLTRB(24, 45, 24, 10),
                          children: [
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 217, 217, 217)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/image/flutter.png',
                                          width: 80,
                                          height: 80,
                                        )),
                                    SizedBox(
                                      width: 53,
                                    ),
                                    Text(
                                      'Road Map',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 44, 70, 84)),
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 217, 217, 217)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/image/flutter.png',
                                          width: 80,
                                          height: 80,
                                        )),
                                    SizedBox(
                                      width: 53,
                                    ),
                                    Text(
                                      'Novice',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 44, 70, 84)),
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 217, 217, 217)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/image/flutter.png',
                                          width: 80,
                                          height: 80,
                                        )),
                                    SizedBox(
                                      width: 53,
                                    ),
                                    Text(
                                      'Adv-Beginner',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 44, 70, 84)),
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 217, 217, 217)),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/image/flutter.png',
                                          width: 80,
                                          height: 80,
                                        )),
                                    SizedBox(
                                      width: 53,
                                    ),
                                    Text(
                                      'Competent',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 44, 70, 84)),
                                    )
                                  ],
                                )),
                          ])),
                ),
              ]),
            )));
  }
}

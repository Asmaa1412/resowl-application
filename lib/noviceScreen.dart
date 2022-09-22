import 'dart:ffi';

import 'package:flutter/material.dart';

class NoviceScreen extends StatelessWidget {
  const NoviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: NoviceScreenF(),
    );
  }
}

class NoviceScreenF extends StatefulWidget {
  const NoviceScreenF({Key? key}) : super(key: key);

  @override
  State<NoviceScreenF> createState() => _NoviceScreenFState();
}

class _NoviceScreenFState extends State<NoviceScreenF> {
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
                      width: 17,
                    ),
                    Column(
                      children: [
                        Text(
                          'Novice',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '   Every expert was \n   once a beginner.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
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
                          padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                          children: [
                            Stack(
                              children: [

                                
                                Container(
                                  padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                                  height: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 217, 217, 217),
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      'assets/image/book.jfif',
                                      width: 50,
                                    ),
                                    title: const Text(
                                      'Book : Flutter Apprentice (First Edition)',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    subtitle: Text('400 Pages'),
                                    trailing: Column(
                                      children: [
                                        SizedBox(height: 40),
                                        Text(
                                          'Free >',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 5, 0),
                              height: 75,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 217, 217, 217),
                              ),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/image/book.jfif',
                                  width: 50,
                                ),
                                title: Text(
                                  'Book : Flutter Apprentice (First Edition)',
                                  style: TextStyle(fontSize: 15),
                                ),
                                subtitle: Text('400 Pages'),
                                trailing: Column(
                                  children: [
                                    SizedBox(height: 40),
                                    Text(
                                      'Free >',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                          ])),
                ),
              ]),
            )));
  }
}

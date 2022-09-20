import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: RegistrationScreenF(),
    );
  }
}

class RegistrationScreenF extends StatefulWidget {
  const RegistrationScreenF({Key? key}) : super(key: key);

  @override
  State<RegistrationScreenF> createState() => _RegistrationScreenFState();
}

class _RegistrationScreenFState extends State<RegistrationScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.87,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 244, 217, 184), BlendMode.darken),
                  fit: BoxFit.fill,
                  image: AssetImage('image/cover.jpg'))),
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'image/5.png',
                        ))),
                width: 200,
                height: 110,
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(12, 0, 20, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(50, 239, 234, 216)),
                width: 400,
                height: 440,
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                            labelStyle: TextStyle(shadows: [
                              Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 15,
                                  color: Colors.white)
                            ], fontSize: 20, fontWeight: FontWeight.bold),
                            labelColor: Color.fromARGB(255, 109, 139, 116),
                            tabs: [
                              Tab(text: 'Sign In'),
                              Tab(text: 'Sign Up'),
                            ]),
                        Expanded(
                            child: TabBarView(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                SizedBox(
                                  width: 310,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: 'Email'),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                SizedBox(
                                  width: 310,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: 'Password'),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 140,
                                  height: 50,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'LogIn',
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color.fromARGB(
                                                210, 255, 255, 255),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              210, 109, 139, 116))),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 160,
                                  height: 50,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forget Password ?',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(210, 0, 0, 0),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 310,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: 'Name'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 310,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: 'Email'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 310,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: 'Password'),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 140,
                                  height: 50,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'LogIn',
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color.fromARGB(
                                                210, 255, 255, 255),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Color.fromARGB(
                                              210, 109, 139, 116))),
                                ),
                              ],
                            ),
                          ],
                        ))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

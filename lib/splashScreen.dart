import 'package:flutter/material.dart';

var coloro = 0xEFEAD8;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'splash screen one',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: SplashScreenF(),
    );
  }
}

class SplashScreenF extends StatefulWidget {
  const SplashScreenF({Key? key}) : super(key: key);

  @override
  State<SplashScreenF> createState() => _SplashScreenFState();
}

class _SplashScreenFState extends State<SplashScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: 600,
            color: Color(0xEFEAD8),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(130, 180, 0, 5),
                child: Image.asset(
                  'image/owl.png',
                  width: 130,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(130, 0, 0, 5),
                child: Text(
                  'Resowl',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 109, 136, 116),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(130, 0, 0, 5),
                child: Text(
                  'a good   resource   for  you ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 109, 136, 116),
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

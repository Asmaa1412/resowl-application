import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var coloro = 0xEFEAD8;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'splash screen one',
      theme: ThemeData(primarySwatch: Colors.blue),
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
        body: Container(
            width: 600,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 220,
                  ),
                  Image.asset(
                    'assets/image/5.png',
                    width: 130,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Resowl',
                    style: GoogleFonts.gentiumBasic(
                        fontSize: 27,
                        color: Color.fromARGB(255, 26, 131, 118),
                        fontWeight: FontWeight.bold),
                  ),
                  Text('a good   resource   for  you ',
                      style: GoogleFonts.gentiumBasic(
                        fontSize: 22,
                        color: Color.fromARGB(255, 26, 131, 118),
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
            )),
      ),
    );
  }
}

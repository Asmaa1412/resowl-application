import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration screen',
      theme: ThemeData(primarySwatch: Colors.blue),
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
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.gentiumBasic(fontSize: 40),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Join Us, and start studying',
                style: GoogleFonts.gentiumBasic(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/image/welcom.PNG',
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'LogIn',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(210, 255, 255, 255),
                          fontWeight: FontWeight.w900),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 190, 167),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)))),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(255, 2, 190, 167),
                          fontWeight: FontWeight.w600),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)),
                        side: BorderSide(
                            color: Color.fromARGB(255, 2, 190, 167),
                            width: 2.6))),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Browse',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(210, 255, 255, 255),
                          fontWeight: FontWeight.w900),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 190, 167),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

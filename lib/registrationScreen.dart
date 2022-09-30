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
              Image.asset(
                'assets/image/welcom.PNG',
              )
            ],
          ),
        ),
      ),
    );
  }
}
 /*    child: TextButton(
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
                                              210, 109, 139, 116))), */
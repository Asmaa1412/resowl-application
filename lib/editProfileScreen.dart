import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: EditProfileScreenF(),
    );
  }
}

class EditProfileScreenF extends StatefulWidget {
  const EditProfileScreenF({Key? key}) : super(key: key);

  @override
  State<EditProfileScreenF> createState() => _EditProfileScreenFState();
}

class _EditProfileScreenFState extends State<EditProfileScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Edit Account',
                    style: GoogleFonts.gentiumBasic(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Image.asset(
                'assets/image/profile.PNG',
                width: 300,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Name:'),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Email:'),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Password:'),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ),
              SizedBox(
                height: 1,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
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
          )),
    ));
  }
}

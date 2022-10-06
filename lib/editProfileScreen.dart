import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/homeScreen.dart';

import 'aboutUsScreen.dart';
import 'favoredScreen.dart';
import 'registrationScreen.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 3, 167, 148),
        elevation: 5.0,
        title: Padding(
          padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
          child: Text(
            'Edit Account',
            style: GoogleFonts.gentiumBasic(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 23),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              icon: Icon(
                Icons.home_filled,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/image/5.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AboutUsScreen()));
                              },
                              child: Text(
                                'Resowl',
                                style: GoogleFonts.gentiumBasic(
                                    color: Color.fromARGB(255, 2, 137, 121),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AboutUsScreen()));
                              },
                              child: Text(
                                'A good resource for you',
                                style: GoogleFonts.gentiumBasic(
                                    color: Color.fromARGB(255, 125, 129, 128),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ])),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Color.fromARGB(100, 158, 155, 155),
                    thickness: 2.0,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AboutUsScreen()));
                          },
                          child: Text(
                            'About Us',
                            style: GoogleFonts.gentiumBasic(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => EditProfileScreen()));
                          },
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.gentiumBasic(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FavoredScreen()));
                          },
                          child: Text(
                            'Favored',
                            style: GoogleFonts.gentiumBasic(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                          },
                          child: Text(
                            'Log Out',
                            style: GoogleFonts.gentiumBasic(
                                color: Color.fromARGB(255, 36, 150, 137),
                                fontSize: 19,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          )),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  width: 490,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/reg.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                CustomPaint(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    color: Color.fromARGB(99, 21, 112, 102),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(135, 60, 0, 0),
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/image/profile.PNG'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 240, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '',
                              style: GoogleFonts.gentiumBasic(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
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
                          height: 70,
                        ),
                        SizedBox(
                          width: 350,
                          height: 40,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Send',
                                style: GoogleFonts.gentiumBasic(
                                    fontSize: 21,
                                    color: Color.fromARGB(245, 255, 255, 255),
                                    fontWeight: FontWeight.w900),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 2, 190, 167),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(11)))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}

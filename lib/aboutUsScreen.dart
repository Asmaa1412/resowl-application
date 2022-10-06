import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/homeScreen.dart';

import 'editProfileScreen.dart';
import 'favoredScreen.dart';
import 'registrationScreen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: AboutUsScreenF(),
    );
  }
}

class AboutUsScreenF extends StatefulWidget {
  const AboutUsScreenF({Key? key}) : super(key: key);

  @override
  State<AboutUsScreenF> createState() => _AboutUsScreenFState();
}

class _AboutUsScreenFState extends State<AboutUsScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 167, 148),
        elevation: 5.0,
        title: Padding(
          padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
          child: Text(
            'About Us',
            style: GoogleFonts.gentiumBasic(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 23),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/image/welcom.PNG',
              width: 270,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 20, 23),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
                style: GoogleFonts.gentiumBasic(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2.0,
              indent: 19,
              endIndent: 220,
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.mail_outline_outlined,
                  size: 27,
                  color: Color.fromARGB(255, 40, 151, 137),
                ),
                SizedBox(
                  width: 18,
                ),
                TextButton(
                    onPressed: () {
                      /*   Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: ((context) => forgetPScreen()))); */
                    },
                    child: Text(
                      'Flutter @is an .open ',
                      style: GoogleFonts.gentiumBasic(
                        color: Color.fromARGB(200, 0, 0, 0),
                        fontSize: 14,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 40, 151, 137),
                  size: 27,
                ),
                SizedBox(
                  width: 18,
                ),
                TextButton(
                    onPressed: () {
                      /*   Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: ((context) => forgetPScreen()))); */
                    },
                    child: Text(
                      'https//dartp ad.dev/?',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

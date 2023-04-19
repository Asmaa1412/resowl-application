import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/Screen/homeScreen.dart';

import 'editProfileScreen.dart';
import 'favoredScreen.dart';
import 'registrationScreen.dart';

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
        backgroundColor: const Color.fromARGB(255, 3, 167, 148),
        elevation: 5.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
          child: Text(
            'About Us',
            style: GoogleFonts.gentiumBasic(
                color: const Color.fromARGB(255, 255, 255, 255), fontSize: 23),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreenF()));
              },
              icon: const Icon(
                Icons.home_filled,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/image/5.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const AboutUsScreenF()));
                            },
                            child: Text(
                              'Resowl',
                              style: GoogleFonts.gentiumBasic(
                                  color: const Color.fromARGB(255, 2, 137, 121),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const AboutUsScreenF()));
                            },
                            child: Text(
                              'A good resource for you',
                              style: GoogleFonts.gentiumBasic(
                                  color:
                                      const Color.fromARGB(255, 125, 129, 128),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ])),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
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
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AboutUsScreenF()));
                        },
                        child: Text(
                          'About Us',
                          style: GoogleFonts.gentiumBasic(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 19,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const EditProfileScreen()));
                        },
                        child: Text(
                          'Edit Profile',
                          style: GoogleFonts.gentiumBasic(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 19,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FavoredScreen()));
                        },
                        child: Text(
                          'Favored',
                          style: GoogleFonts.gentiumBasic(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: 19,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SplashScreen()));
                        },
                        child: Text(
                          'Log Out',
                          style: GoogleFonts.gentiumBasic(
                              color: const Color.fromARGB(255, 36, 150, 137),
                              fontSize: 19,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
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
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2.0,
              indent: 19,
              endIndent: 220,
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Icon(
                  Icons.mail_outline_outlined,
                  size: 27,
                  color: Color.fromARGB(255, 40, 151, 137),
                ),
                const SizedBox(
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
                        color: const Color.fromARGB(200, 0, 0, 0),
                        fontSize: 14,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 40, 151, 137),
                  size: 27,
                ),
                const SizedBox(
                  width: 18,
                ),
                TextButton(
                    onPressed: () {
                      /*   Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: ((context) => forgetPScreen()))); */
                    },
                    child: const Text(
                      'https//dartp ad.dev/?',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Image.asset(
              'assets/image/welcom.PNG',
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'About US',
                  style: GoogleFonts.gentiumBasic(
                    fontSize: 37,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2.0,
              indent: 19,
              endIndent: 220,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 2, 20, 23),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
                style: GoogleFonts.gentiumBasic(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
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
                        fontSize: 20,
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
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

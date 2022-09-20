import 'package:flutter/material.dart';

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
              backgroundColor: Color.fromARGB(255, 255, 252, 242),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.list),
              ),
              actions: [
                Image.asset(
                  'image/5.png',
                  scale: 2,
                ),
              ],
            ),
            body: Container(
                color: Color.fromARGB(255, 255, 252, 242),
                child: Column(children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      width: double.infinity,
                      child: Stack(children: [
                        Container(
                          width: 410,
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('image/green.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Stack(
                            children: [
                              Container(
                                width: 410,
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('image/green.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('image/55.png'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(37, 170, 0, 0),
                                child: Text(
                                  'Resowl',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 252, 242),
                                      fontSize: 35,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 25, 20, 0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),
                      Icon(
                        Icons.mail_outline_rounded,
                        size: 30,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Loremipsum@dolor.sit ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 23,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.phone_in_talk_outlined,
                        size: 35,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        '0587618692 ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 23,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.facebook,
                        size: 30,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'https://dartpad.dev/?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 23,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ]))));
  }
}

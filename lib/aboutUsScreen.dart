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
          body: Stack(children: [
        Container(
          width: double.infinity,
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(
                  MediaQuery.of(context).size.width, 260.0), //UN
            ),
            color: Color.fromARGB(255, 174, 199, 167),
            image: DecorationImage(
                image: AssetImage('assets/image/green.jpg'), fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(145, 135, 0, 0),
          child: Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/image/flutter.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
          child: Column(
            children: [
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
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ])),
    );
  }
}

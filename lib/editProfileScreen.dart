import 'package:flutter/material.dart';

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
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 252, 242),
            child: Column(children: [
              SizedBox(
                height: 310,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '  Email : Lorem @ dolor .com ')),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '  Name : Lorem dolor')),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: '  Password ')),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 90,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(210, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Color.fromARGB(210, 109, 139, 116))),
              ),
            ]),
          ),
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
                  image: AssetImage('assets/image/green.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 110, 130, 20),
            child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 70,
                backgroundImage: AssetImage('assets/image/flutter.png')),
          ),
        ],
      ),
    ));
  }
}

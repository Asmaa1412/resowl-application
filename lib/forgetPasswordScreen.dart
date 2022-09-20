import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: ForgetPasswordScreenF(),
    );
  }
}

class ForgetPasswordScreenF extends StatefulWidget {
  const ForgetPasswordScreenF({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreenF> createState() => _ForgetPasswordScreenFState();
}

class _ForgetPasswordScreenFState extends State<ForgetPasswordScreenF> {
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
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('image/green.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25, 300, 0),
                    child: Text(
                      'Enter Your Email :',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 440,
                    child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(150, 109, 139, 116),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Send',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(250, 109, 139, 116)),
                      ),
                    ),
                  )
                ]))));
  }
}

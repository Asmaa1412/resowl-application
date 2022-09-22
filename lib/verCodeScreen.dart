import 'package:flutter/material.dart';

class VerCodeScreen extends StatelessWidget {
  const VerCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: VerCodeScreenF(),
    );
  }
}

class VerCodeScreenF extends StatefulWidget {
  const VerCodeScreenF({Key? key}) : super(key: key);

  @override
  State<VerCodeScreenF> createState() => _VerCodeScreenFState();
}

class _VerCodeScreenFState extends State<VerCodeScreenF> {
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
                  ('assets/image/5.png'),
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
                          image: AssetImage('assets/image/green.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Text(
                        'Forget Password',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25, 250, 0),
                    child: Text(
                      'Enter Code :',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 330,
                    child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 252, 242),
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

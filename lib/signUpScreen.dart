import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/homeScreen.dart';
import 'package:resowl/logInScreen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LogIn screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SignUpScreenF(),
    );
  }
}

class SignUpScreenF extends StatefulWidget {
  const SignUpScreenF({Key? key}) : super(key: key);

  @override
  State<SignUpScreenF> createState() => _SignUpScreenFState();
}

class _SignUpScreenFState extends State<SignUpScreenF> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();

    super.dispose();
  }

  Future addUser(String name) async {
    await FirebaseFirestore.instance.collection('user').add({'name': name});
    print("save name ");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
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
                    height: 250,
                    color: Color.fromARGB(100, 2, 190, 167),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop(context);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(140, 55, 0, 0),
                  child: Image.asset(
                    'assets/image/5.png',
                    width: 120,
                    height: 120,
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
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Sign Up',
                          style: GoogleFonts.gentiumBasic(fontSize: 38),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Please fill the details and create account',
                          style: GoogleFonts.gentiumBasic(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 360,
                          height: 50,
                          child: TextField(
                              controller: nameController,
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
                              controller: emailController,
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
                              obscureText: true,
                              controller: passwordController,
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
                          height: 80,
                        ),
                        SizedBox(
                          width: 350,
                          height: 40,
                          child: TextButton(
                              onPressed: () {
                                FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim())
                                    .then((value) {
                                  print("Create new account");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                }).onError((error, stackTrace) {
                                  print("Error ${error.toString()}");
                                });
                                addUser(nameController.text.trim());
                              },
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.gentiumBasic(
                                    fontSize: 21,
                                    color: Color.fromARGB(244, 255, 255, 255),
                                    fontWeight: FontWeight.w900),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 2, 190, 167),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(11)))),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 94,
                            ),
                            Text('Already have an account ?'),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      (context),
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              LogInScreen())));
                                },
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 91, 97),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



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
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {  Navigator.pop(context);
},
          ),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Text(
                        'Forget \nPassword',
                        style: GoogleFonts.gentiumBasic(fontSize: 40),
                      ),
                      Text(
                        'verification code',
                        style: GoogleFonts.gentiumBasic(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 91, 97)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 360,
                height: 50,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('Code:'),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: GoogleFonts.gentiumBasic(
                          fontSize: 21,
                          color: Color.fromARGB(210, 255, 255, 255),
                          fontWeight: FontWeight.w900),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 2, 190, 167),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

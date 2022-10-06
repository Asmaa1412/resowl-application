import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resowl/sub-levelScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'HomeScreen.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: TipsScreenF(),
    );
  }
}

class TipsScreenF extends StatefulWidget {
  const TipsScreenF({Key? key}) : super(key: key);

  @override
  State<TipsScreenF> createState() => _TipsScreenFState();
}

class _TipsScreenFState extends State<TipsScreenF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 167, 148),
        elevation: 5.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SubLevelScreen()));
          },
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
          child: Text(
            'Tips',
            style: GoogleFonts.gentiumBasic(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 23),
          ),
        ),
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
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 245, 245, 245),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: FutureBuilder(
                  future: getStoreComment(),
                  builder: (context, snapshot) {
                    return ListView.builder(
                        itemCount: commentT.length,
                        itemBuilder: ((context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Container(
                                        height: 105,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 0, 7),
                                                  child: Text(
                                                    'User',
                                                    style: GoogleFonts
                                                        .gentiumBasic(
                                                            fontSize: 15,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    136,
                                                                    119)),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: GetComment(
                                                      commentGet:
                                                          commentT[index]),
                                                )
                                              ],
                                            ),
                                          ],
                                        )),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          355, 75, 0, 0),
                                      child: FavoriteButton(
                                        iconSize: 30.0,
                                        isFavorite: true,
                                        valueChanged: (_isFavorite) {},
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          );
                        }));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      /*  floatingActionButton: Row(
        children: [
          SizedBox(
            width: 120,
            height: 50,
            child: TextField(
                controller: commentController,
                decoration: InputDecoration(
                    label: Text('Name:'),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
          ),
          FloatingActionButton(
            onPressed: () {
              addComment(commentController.text);
            },
            backgroundColor: Color.fromARGB(255, 3, 167, 148),
            child: const Icon(
              Icons.add,
              color: Colors.red,
            ),
          ),
        ],
      ), */
    ));
  }

  final commentController = TextEditingController();

  @override
  void dispose() {
    commentController.dispose();

    super.dispose();
  }

  Future addComment(String comment) async {
    await FirebaseFirestore.instance
        .collection('comment')
        .add({'comment': comment});
    print("save comment ");
  }

  List<String> commentT = [];

  Future getStoreComment() async {
    await FirebaseFirestore.instance
        .collection('comment')
        .get()
        .then((snapshot) => snapshot.docs.forEach((comm) {
              print(comm.reference);
              commentT.add(comm.reference.id);
            }));
  }
}

class GetComment extends StatelessWidget {
  final String commentGet;
  GetComment({required this.commentGet});

  @override
  Widget build(BuildContext context) {
    CollectionReference comments =
        FirebaseFirestore.instance.collection('comment');

    return FutureBuilder<DocumentSnapshot>(
      future: comments.doc(commentGet).get(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text(
            '${data['comment']}',
            style: GoogleFonts.gentiumBasic(fontSize: 13, color: Colors.black),
          );
        }
        return Text('LOADING ...');
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:resowl/splashScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'HomeScreen.dart';
import 'aboutUsScreen.dart';
import 'authorScreen.dart';
import 'editProfileScreen.dart';
import 'favoredScreen.dart';
import 'forgetPasswordScreen.dart';
import 'logInScreen.dart';
import 'noviceScreen.dart';
import 'registrationScreen.dart';
import 'resourceScreen.dart';
import 'signUpScreen.dart';
import 'sub-levelScreen.dart';
import 'subjectSreen.dart';
import 'tips.dart';
import 'verCodeScreen.dart';

/* void main() {
  runApp(const SplashScreen());
} */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const RegistrationScreen());
}  

/* void main() {
  runApp(const LogInScreen());
} */

/* void main() {
  runApp(const SignUpScreen());
}
 */

/*  void main() {
  runApp(const HomeScreen());
}   */
/* 
  void main() {
  runApp(const SubjectScreen());
} */

/* 
 void main() {
  runApp(const AboutUsScreen());
}  */

/*  void main() {
  runApp(const ForgetPasswordScreen());
}   */

/* void main() {
  runApp(const SubLevelScreen());
} */

/* void main() {
  runApp(const NoviceScreen());
} */

/*  void main() {
  runApp(const ResourceSacreen());
} 
 */
/* void main() {
  runApp(const EditProfileScreen());
} */

/*  void main() {
  runApp(const VerCodeScreen());
}  */
/* 
void main() {
  runApp(const FavoredScreen());
}   */

/* 
  void main() {
runApp(const TipsScreen());
}   */

/* void main() { 
  runApp(const AuthorScreen());
} */


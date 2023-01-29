import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'registrationScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const RegistrationScreen());
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/pages/RegisterPage.dart';
import 'package:flutter_application_1/pages/SplashPage.dart';
import 'package:flutter_application_1/pages/dashboard/DashboardPage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
    title: 'Lapor Book',
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/login': (context) => LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/dashboard': (context) => const DashboardPage(),
      // '/add': (context) => AddFormPage(),
      // '/detail': (context) => DetailPage(),
    },
  ));
}

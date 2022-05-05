import 'package:farmers/pages/home.dart';
import 'package:farmers/pages/login.dart';
import 'package:farmers/pages/register.dart';
import 'package:farmers/pages/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgroClimate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SplashScreen.routeName: (BuildContext context) => const SplashScreen(),
        LoginPage.routeName: (BuildContext context) => const LoginPage(),
        Signup.routeName: (BuildContext context) => const Signup(),
        HomePage.routeName: (BuildContext context) => const HomePage(),
      },
      home: const SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/signup_form.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  static const String routeName = 'signup';

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.24 - 12,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/undraw_weather_app_re_kcb1.svg",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Hello there, Register\nYour Account",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const RegisterForm(),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginPage.routeName);
                  },
                  child: const Center(
                    child: Text(
                      "Already have an account? login",
                      style: TextStyle(color: Colors.green, fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

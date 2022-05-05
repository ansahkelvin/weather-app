import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool isVisble = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.mail,
              color: Colors.grey,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            hintText: "Email",
            // border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(CupertinoIcons.lock, color: Colors.grey),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            hintText: "Password",
            // border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot password? ",
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.green,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              HomePage.routeName,
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Center(
              child: Text(
                " Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

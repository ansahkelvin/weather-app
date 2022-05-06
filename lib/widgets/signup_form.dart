import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmers/pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final nameContoller = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signup() async {
    try {
      final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      final db = FirebaseFirestore.instance;

      final documentPath = db.doc("users/${user.user!.uid}");
      documentPath
          .set({"email": emailController.text, "name": nameContoller.text});
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: nameContoller,
          autocorrect: false,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.green,
            )),
            hintText: "Full name",
            // border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: emailController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
            prefixIcon: Icon(CupertinoIcons.mail, color: Colors.grey),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.green,
            )),
            hintText: "Email",
            // border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: passwordController,
          textInputAction: TextInputAction.done,
          obscureText: visible,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  visible = !visible;
                });
              },
              icon: Icon(
                visible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Colors.grey,
              ),
            ),
            prefixIcon: const Icon(CupertinoIcons.lock, color: Colors.grey),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.green,
            )),
            hintText: "Password",
            // border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "By creating an account you agree to the terms and conditions ",
                softWrap: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
              Text(
                "Terms And Conditions",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: signup,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Center(
              child: Text(
                " Register",
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

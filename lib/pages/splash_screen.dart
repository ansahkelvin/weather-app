import 'package:farmers/pages/login.dart';
import 'package:flutter/material.dart';

import '../models/splash.dart';
import '../widgets/page_view_item.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final data = Splash.data;
  final controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 14.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7 - 14.0,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (idx) {
                    setState(() {
                      currentIndex = idx;
                    });
                  },
                  itemCount: data.length,
                  itemBuilder: (context, index) =>
                      PageViewItem(data: data[index], index: index),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushReplacementNamed(LoginPage.routeName);
                              },
                              child: const Text(
                                "SKIP",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            Row(
                              children: List.generate(
                                data.length,
                                (index) => Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  height: 4,
                                  width: currentIndex == index ? 14.0 : 4,
                                  decoration: BoxDecoration(
                                    color: currentIndex != index
                                        ? Colors.grey
                                        : Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                              ),
                              onPressed: () => {
                                if (currentIndex == data.length - 1)
                                  {
                                    Navigator.of(context)
                                        .pushNamed(LoginPage.routeName)
                                  },
                                controller.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.bounceInOut,
                                ),
                              },
                              child: Text(
                                currentIndex == data.length - 1
                                    ? "Login"
                                    : "Next",
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

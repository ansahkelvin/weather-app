import 'package:flutter/material.dart';

class HomeWeatherWidget extends StatelessWidget {
  const HomeWeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xfffdfcf3),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 237, 235, 235),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              -8.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 10,
            top: 10,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Today",
                style: TextStyle(
                  color: Color(0xff2e3151),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const Positioned(
            right: 10,
            top: 10,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "thu, 5 May",
                style: TextStyle(
                  color: Color(0xff2e3151),
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            top: 80,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "30°C",
                style: TextStyle(
                  color: Color(0xff2e3151),
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 45,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 224, 207),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "cloudy",
                    style: TextStyle(
                      color: Color(0xff2e3151),
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 30,
            top: 75,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/sunny.png"),
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              "Accra, Ghana",
              style: TextStyle(
                color: Color(0xff2e3151),
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

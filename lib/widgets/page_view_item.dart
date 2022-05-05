import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/splash.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    Key? key,
    required this.index,
    required this.data,
  }) : super(key: key);
  final int index;
  final Splash data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: SvgPicture.asset(
              data.imageUrl,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Text(
              data.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              data.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

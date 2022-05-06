import 'dart:ui';

import 'package:farmers/models/blog.dart';
import 'package:farmers/pages/blog_learn_more.dart';
import 'package:flutter/material.dart';

class FarmerBlog extends StatefulWidget {
  const FarmerBlog({Key? key}) : super(key: key);

  @override
  State<FarmerBlog> createState() => _FarmerBlogState();
}

class _FarmerBlogState extends State<FarmerBlog> {
  final List<Blog> data = Blog.data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: data.length,
        shrinkWrap: true, //
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BlogReadMore(
                  blog: data[index],
                ),
              ),
            );
          },
          child: SizedBox(
            width: double.infinity,
            child: Card(
                child: Column(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      data[index].imgUrl,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data[index].title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data[index].shortInfo,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

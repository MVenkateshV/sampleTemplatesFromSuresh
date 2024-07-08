import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'lesson_screen.dart';
import 'models/chapter_model.dart';

class ChapterScreen extends StatefulWidget {
  const ChapterScreen({super.key});

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen> {

 /* List<Map<String,dynamic>> mapObj = [
    {"MainText": "Chapter1","subText":"100% completed"},
    {"MainText": "Chapter2","subText":"100% completed"},
    {"MainText": "Chapter3","subText":"100% completed"},
    {"MainText": "Chapter4","subText":"100% completed"},
  ];*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapters in flutter"),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_circle_left_sharp))),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: responseData["contents"].length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    print("mshgfmdszjc ${responseData["contents"][index]["sub_category"]}");
                    Get.to(LessonScreen(data:responseData["contents"][index]["sub_category"]));
                  },
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(responseData["contents"][index]["cname"]),
                        subtitle: Text(responseData["contents"][index]["dogs_image"]),
                        trailing: Icon(Icons.check_circle_outline),
                      ),
                      Divider(thickness: 2,color: Colors.black45,)

                    ],
                  ),
                );
              },
            ),

          ),
        ],
      ),

    );
  }
}

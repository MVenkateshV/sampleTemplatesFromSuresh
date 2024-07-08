import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sub_lesson_videos.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key, required this.data});

  final dynamic data;

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Lessons in flutter"),
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
              itemCount: widget.data.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    print("something went wrong ${widget.data[index]["inner_sub"]}");
                    Get.to(SubLessonVideos(data:widget.data[index]["inner_sub"]));
                  },
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(widget.data[index]["subcatid"].toString()),
                        subtitle: Text(widget.data[index]["image"].toString()),
                        trailing: Icon(Icons.check_circle_outline),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.black45,
                      )
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

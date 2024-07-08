import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubLessonVideos extends StatefulWidget {
  const SubLessonVideos({super.key, required this.data});

  final dynamic data;

  @override
  State<SubLessonVideos> createState() => _SubLessonVideosState();
}

class _SubLessonVideosState extends State<SubLessonVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Videos under lessons"),
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
                return Column(
                  children: [
                    ListTile(
                      title:
                          Text(widget.data[index]["inner_sub_name"].toString()),
                      trailing: Icon(Icons.check_circle_outline),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black45,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

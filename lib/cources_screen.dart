import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidevelopment/chapter_screen.dart';

import 'widgets/input_textform_field.dart';

class CoursersScreen extends StatefulWidget {
  const CoursersScreen({super.key});

  @override
  State<CoursersScreen> createState() => _CoursersScreenState();
}

class _CoursersScreenState extends State<CoursersScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Lessons in flutter"),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_circle_left_sharp))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInputField(
                controller: search,
                validator: (value) {},
                hintText: "search",
                lableText: "Search",
                textName: "",
                prefixIcon: const Icon(Icons.search)),
            const Text(
              "All Cources",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return _cardWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardWidget() {
    return GestureDetector(
      onTap: () {
        Get.to(ChapterScreen());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          elevation: 10,
          child: ListTile(
            leading: const SizedBox(
              height: 50,
              width: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Developemt",
                      style: TextStyle(fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: const Text(
                          " Live Classes  ",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Flutter Development Intermediate level",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.access_alarm_sharp,
                      size: 10,
                    ),
                    Text("32 hrs", style: TextStyle(fontSize: 10)),
                    /*VerticalDivider(
                           // thickness: 2,
                            width: 5,
                            color: Colors.grey,
                          ),*/
                    Container(
                        height: 20, child: VerticalDivider(color: Colors.red)),
                    Icon(
                      Icons.access_alarm_sharp,
                      size: 10,
                    ),
                    Text("18 chapters", style: TextStyle(fontSize: 10)),
                  ],
                ),
                Text(
                  "1000",
                  style: TextStyle(color: Colors.indigoAccent, fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

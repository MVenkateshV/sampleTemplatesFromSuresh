import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Profile"),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_circle_left_sharp))),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 10,top: 10,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 58,
                        backgroundImage: NetworkImage("https://picsum.photos/200"),
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white70,
                              child: Icon(CupertinoIcons.camera),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Text("Name"),
                    Text(
                      "UserName",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Mobile Number"),
                    Text(
                      "5465451254",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Mail"),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Batch No"),
                    Text(
                      "3",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

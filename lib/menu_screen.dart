import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final appTitle = 'Flutter Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
          child: Text(
            'A drawer is an invisible side screen.',
            style: TextStyle(fontSize: 20.0),
          )),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //   ), //BoxDecoration
            //   child: UserAccountsDrawerHeader(
            //     decoration: BoxDecoration(color: Colors.green),
            //     accountName: Text(
            //       "Abhishek Mishra",
            //       style: TextStyle(fontSize: 18),
            //     ),
            //     accountEmail: Text("abhishekm977@gmail.com"),
            //     currentAccountPictureSize: Size.square(50),
            //     currentAccountPicture: CircleAvatar(
            //       backgroundColor: Color.fromARGB(255, 165, 255, 137),
            //       child: Text(
            //         "A",
            //         style: TextStyle(fontSize: 30.0, color: Colors.blue),
            //       ), //Text
            //     ), //circleAvatar
            //   ), //UserAccountDrawerHeader
            // ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Explore Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer
    );
  }
}

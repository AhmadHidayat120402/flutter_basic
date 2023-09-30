import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Drawer"),
      ),
      body: Center(
          child: Builder(
        builder: (context) => ElevatedButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          child: const Text("Klik Me"),
        ),
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.add_box_outlined),
              title: const Text("About"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

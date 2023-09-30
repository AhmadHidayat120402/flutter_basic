import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ini scaffold"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add))
        ],
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.draw_sharp)),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.red,
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(onPressed: () {}, child: const Text("save"))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

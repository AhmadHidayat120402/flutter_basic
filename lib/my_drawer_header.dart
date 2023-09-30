import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/foto_dayat.jpg'))),
          ),
          const Text(
            "Ahmad Hidayat",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Ahmadhidayat120402@gmail.com",
            style: TextStyle(fontSize: 14, color: Colors.grey[200]),
          )
        ],
      ),
    );
  }
}

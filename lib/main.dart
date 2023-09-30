import 'package:flutter/material.dart';
import 'package:flutter_basic/drawer.dart';
import 'package:flutter_basic/drawer_full.dart';
import 'package:flutter_basic/home.dart';
import 'package:flutter_basic/scaffold_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDrawerFull(),
    );
  }
}

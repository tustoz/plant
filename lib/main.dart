import 'package:flutter/material.dart';
import 'package:plant/page/home.dart';

void main() => runApp(const PlantApp());

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

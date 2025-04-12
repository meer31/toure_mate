import 'package:flutter/material.dart';
import 'package:travel_mate/screens/splach_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tavel_mate',
      home: Splash(),
    );
  }
}

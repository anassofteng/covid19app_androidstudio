
import 'package:covid19app/view/splashscreen.dart';
import 'package:covid19app/view/world-states.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        canvasColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: const splashscreen(),
    );
  }
}
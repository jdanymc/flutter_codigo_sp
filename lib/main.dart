import 'package:flutter/material.dart';
import 'package:flutter_codigo_sp/pages/home_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shared Preferences App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

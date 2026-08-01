import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(OmniAIApp());
}

class OmniAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OmniAI Genesis",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

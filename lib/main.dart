import 'package:flutter/material.dart';
import 'pages/puzzle/puzzle_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: PuzzlePage(), // ✅ 여기만 바꾸면 됨
    );
  }
}

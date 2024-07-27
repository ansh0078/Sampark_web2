import 'package:flutter/material.dart';
import 'package:hello_web/Config/Theme.dart';
import 'package:hello_web/View/HomePageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sampark Web',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePageView(),
    );
  }
}

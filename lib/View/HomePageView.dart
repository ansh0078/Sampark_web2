import 'package:flutter/material.dart';
import 'package:hello_web/Config/ResponsiveLayout.dart';
import 'package:hello_web/Pages/MobileHomePage.dart';
import 'package:hello_web/Pages/WebHomePage.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileHomePage(),
      web: WebHomePage(),
    );
  }
}

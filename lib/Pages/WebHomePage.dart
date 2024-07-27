import 'package:flutter/material.dart';
import 'package:hello_web/Widgets/Devider.dart';
import 'package:hello_web/Widgets/MainInfo.dart';
import 'package:hello_web/Widgets/ScreenShort.dart';
import 'package:hello_web/Widgets/WebFeaturesWidget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/photos/logo.png",
            width: 30,
          ),
        ),
        title: const Text(
          'SAMAPRK',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.download),
            label: Text(
              'Donwload',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MainInfo(),
              const SizedBox(height: 40),
              const MyDevider(),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Features",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onBackground),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(icon: Icons.info, title: "Easy to use", description: "Sampark App is A Easy to use app where you can connect with each other"),
                  WebFeatureTile(icon: Icons.call, title: "Chat With Friends", description: "Sampark App is A best for comunicating with friend anf family")
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(icon: Icons.video_call, title: "One to One Audio Call", description: "One to One video Call"),
                  WebFeatureTile(icon: Icons.group, title: "Group Chat", description: "Sampark App is A Easy to use app where you can connect with each other")
                ],
              ),
              const SizedBox(height: 80),
              const MyDevider(),
              const SizedBox(height: 40),
              const ScreenShortPage(),
              const SizedBox(height: 60),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Made with ❤️ By Ansh Raj",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    TextStyle appTextStyle = const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "About",
              style: appTextStyle,
            ),
            const SizedBox(width: 10),
            Text(
              "Work",
              style: appTextStyle,
            ),
            const SizedBox(width: 10),
            Text(
              'Contact',
              style: appTextStyle,
            )
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/space.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

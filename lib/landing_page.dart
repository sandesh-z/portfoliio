import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfoliio/ui/card.dart';

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
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(40),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 16, mainAxisSpacing: 16),
            itemCount: 8,
            itemBuilder: (_, count) =>
                const AppCard(child: Text("My projects")),
          ),
        ),
      ]),
    );
  }
}

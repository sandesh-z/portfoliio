import 'package:flutter/material.dart';
import 'package:portfoliio/ui/pages/about.dart';
import 'package:portfoliio/ui/pages/contact.dart';
import 'package:portfoliio/ui/widgets/app_bar.dart';
import 'package:portfoliio/ui/widgets/app_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

//demo: https://www.flo-design.eu/
class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70.0),
                  const AboutPage(),
                  const SizedBox(height: 20.0),
                  const Padding(
                      padding: EdgeInsets.only(left: 120.0),
                      child: Text("Projects", style: TextStyle(fontSize: 28))),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120.0, vertical: 10.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16),
                      itemCount: 8,
                      itemBuilder: (_, count) =>
                          const AppCard(child: Text("My projects")),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120.0),
                    child: Row(
                      children: [
                        Flexible(flex: 1, child: ContactMe()),
                        Flexible(flex: 1, child: ContactForm())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

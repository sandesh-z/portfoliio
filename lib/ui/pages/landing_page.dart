import 'package:flutter/material.dart';
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
    TextStyle appTextStyle = const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18);
    var titleGap = 20.0;
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Icon(
              Icons.person_4,
              size: 28,
            )),
        toolbarHeight: 79,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "About",
              style: appTextStyle,
            ),
            SizedBox(width: titleGap),
            Text(
              "Projects",
              style: appTextStyle,
            ),
            SizedBox(width: titleGap),
            Text(
              'Contact',
              style: appTextStyle,
            ),
            SizedBox(width: titleGap * 2),
          ],
        ),
        backgroundColor: Colors.grey,
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

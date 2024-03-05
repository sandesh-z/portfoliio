import 'package:flutter/material.dart';
import 'package:portfoliio/ui/widgets/app_bar.dart';

import '../../widgets/app_card.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 120.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            const Text(
              "Featured Projects",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            const Text(
                "Find out about my works:\nread through my case studies,\nhave a look at them and try out apps I’ve\nbuilt."),
            const SizedBox(height: 20.0),
            GridView.builder(
              padding: const EdgeInsets.only(right: 120.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, crossAxisSpacing: 16, mainAxisSpacing: 16),
              itemCount: 8,
              itemBuilder: (_, count) =>
                  const AppCard(child: Text("My projects")),
            ),
          ],
        ),
      ),
    );
  }
}

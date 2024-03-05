import 'package:flutter/material.dart';

import '../pages/contact.dart';
import '../pages/my_projects/featured_projects.dart';

PreferredSize customAppBar({required BuildContext context}) {
  TextStyle appTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18);
  var titleGap = 20.0;
  return PreferredSize(
    preferredSize: const Size.fromHeight(100),
    child: Container(
      height: kToolbarHeight + 20,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "About",
            style: appTextStyle,
          ),
          SizedBox(width: titleGap),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const FeaturedProjects()));
            },
            child: Text(
              'Projects',
              style: appTextStyle,
            ),
          ),
          SizedBox(width: titleGap),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const ContactPage()));
            },
            child: Text(
              'Contact',
              style: appTextStyle,
            ),
          ),
          SizedBox(width: titleGap * 2),
        ],
      ),
    ),
  );
}

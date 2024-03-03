import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../resource/assets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Who \nam I?",
                style: TextStyle(fontSize: 28),
              ),
              Image.asset(
                Assets.spaceImage,
                height: 200,
                width: 200,
              )
            ],
          ),
        ),
        const Flexible(
          flex: 1,
          child: Text(
            """ICandy carrot cake pie brownie soufflé chupa chups. Liquorice gummies jelly beans tootsie roll sweet cake donut. Shortbread apple pie brownie tiramisu ice cream cookie donut sweet.Cheesecake bonbon cheesecake pudding danish wafer. Wafer muffin candy brownie topping jujubes. Chocolate bar gummies cookie jelly tootsie roll. Oat cake fruitcake cake fruitcake shortbread oat cake candy canes pie. Icing pie croissant wafer croissant croissant. Tart cheesecake bonbon sweet roll apple pie chocolate. Caramels jelly-o pastry ice cream dragée. Fruitcake gummi bears croissant shortbread ice cream chocolate cake croissant. Lemon drops bonbon carrot cake pie lemon drops. Candy pudding donut candy pudding marshmallow cookie cheesecake. Bonbon jelly beans oat cake chocolate bar carrot cake fruitcake cotton candy halvah powder. Chocolate caramels cotton candy bear claw ice cream cookie icing. Halvah shortbread croissant topping lemon drops cake icing. Marshmallow ice cream pie pastry chupa chups liquorice. Powder halvah marzipan donut marshmallow caramels muffin chocolate bar. Sugar plum tart biscuit gummies chocolate tiramisu croissant danish.""",
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}

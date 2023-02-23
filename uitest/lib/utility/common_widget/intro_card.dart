import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uitest/utility/common_widget/card_contanier.dart';
import 'package:uitest/utility/common_widget/profile.dart';
import 'package:uitest/utility/common_widget/verticaldotedline.dart';

import '../constants.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsAll,
      child: CardContainer(
        hight: SZ.getHeight(context) / 3,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            tabbarMenubar(),
            SZ.h10,
            const ProfileFb1(),
            SZ.h5,
            name(context),
            SZ.h3,
            role(context),
            SZ.h25,
            icomesummary(context)
          ]),
        ),
      ),
    );
  }

  IntrinsicHeight icomesummary(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("\$8900", style: Theme.of(context).textTheme.headline6),
              const Text("Income")
            ],
          ),
          verticalline(),
          Column(
            children: [
              Text("\$5500", style: Theme.of(context).textTheme.headline6),
              const Text("Expenses")
            ],
          ),
          verticalline(),
          Column(
            children: [
              Text("\$890", style: Theme.of(context).textTheme.headline6),
              const Text("Loan")
            ],
          ),
        ],
      ),
    );
  }

  Padding verticalline() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: CustomPaint(
          size: const Size(0.5, double.infinity),
          painter: DashedLineVerticalPainter()),
    );
  }

  Text role(BuildContext context) {
    return Text("UX/UI Designer",
        style: Theme.of(context)
            .textTheme
            .caption!
            .copyWith(fontWeight: FontWeight.bold));
  }

  Text name(BuildContext context) {
    return Text(
      "Hira Riaz",
      style: Theme.of(context)
          .textTheme
          .headline5!
          .copyWith(color: UIC.button, fontWeight: FontWeight.bold),
    );
  }

  Row tabbarMenubar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FaIcon(FontAwesomeIcons.barsProgress, size: 13, color: UIC.button),
        FaIcon(FontAwesomeIcons.ellipsisVertical, size: 13, color: UIC.button)
      ],
    );
  }
}

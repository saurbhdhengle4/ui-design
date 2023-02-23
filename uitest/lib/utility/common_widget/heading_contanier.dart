import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class HeadingContanier extends StatelessWidget {
  const HeadingContanier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var format = DateFormat('MMM dd, yyyy ').format(DateTime.now());

    return Padding(
      padding: edgeInsetsOnly,
      child: Row(
        children: [
          title(context),
          SZ.w10,
          notification(),
          const Spacer(),
          date(format, context),
        ],
      ),
    );
  }

  Text date(String format, BuildContext context) {
    return Text(
      format,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(color: UIC.button),
    );
  }

  Badge notification() {
    return Badge(
        padding: const EdgeInsets.all(3),
        elevation: 4,
        position: BadgePosition.topEnd(top: -2, end: 1),
        badgeContent: badgeContainer(),
        child: FaIcon(FontAwesomeIcons.bell, size: 20, color: UIC.text1));
  }

  Container badgeContainer() {
    return Container(color: Colors.red, height: 2);
  }

  Text title(BuildContext context) {
    return Text("Overview",
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.w800, color: UIC.button));
  }
}

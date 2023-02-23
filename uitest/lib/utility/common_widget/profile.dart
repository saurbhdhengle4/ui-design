import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileFb1 extends StatelessWidget {
  const ProfileFb1({this.radius = 50.0, Key? key}) : super(key: key);

  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: UIC.background,
      backgroundImage: const NetworkImage(
        "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg",
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';

class CardContainer extends StatelessWidget {
  final double hight;
  final Widget child;
  const CardContainer({Key? key, required this.hight, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BORDERRADIUS.br(20),
        boxShadow: Constants.boxShadow2,
      ),
      child: child,
    );
  }
}

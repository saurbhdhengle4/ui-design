import 'package:flutter/material.dart';
import 'package:uitest/utility/constants.dart';

class GradientButtonFb4 extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const GradientButtonFb4(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);

  final double borderRadius = 25;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(colors: [UIC.button, UIC.button])),
        child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                alignment: Alignment.center,
                padding: MaterialStateProperty.all(const EdgeInsets.only(
                    right: 75, left: 75, top: 15, bottom: 15)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius)),
                )),
            onPressed: onPressed,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )));
  }
}

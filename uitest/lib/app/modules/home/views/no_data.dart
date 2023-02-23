import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitest/app/routes/app_pages.dart';
import 'package:uitest/utility/constants.dart';

class NoData extends StatelessWidget {
  const NoData({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No Data",
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontSize: 20)),
            SZ.h3,
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 20)),
            SZ.h25,
            TextButton(
              onPressed: () => Get.toNamed(Routes.PAYMENT),
              child: const Text("Payment View"),
            ),
            SZ.h25,
            TextButton(
              onPressed: () => Get.offAllNamed(Routes.LOGIN),
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}

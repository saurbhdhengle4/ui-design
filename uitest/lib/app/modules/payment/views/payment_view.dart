import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:uitest/app/modules/payment/controllers/payment_controller.dart';
import 'package:uitest/utility/constants.dart';

import '../../../../utility/common_widget/buttons.dart';
import '../../../../utility/common_widget/menu_tab.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIC.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: UIC.background,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black))
        ],
        centerTitle: true,
      ),
      body: Container(
          height: SZ.getHeight(context),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(context),
              SZ.h20,
              fliterView(context),
              SZ.h20,
              title2(context),
              SZ.h20,
              tab(),
              const Spacer(),
              seeDetails(),
            ],
          )),
    );
  }

  MenuTab2 tab() {
    return const MenuTab2(
        icon: FontAwesomeIcons.envelopeOpen,
        subtitle: 'Payment from Andres',
        title: 'Payment',
        mony: '\$30.00');
  }

  Text title2(BuildContext context) {
    return Text(
      "Today",
      style: Theme.of(context)
          .textTheme
          .headline5!
          .copyWith(fontWeight: FontWeight.w800, color: UIC.button),
    );
  }

  Obx fliterView(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: SZ.getHeight(context) / 18,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.paymentLists.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            PaymentList data = controller.paymentLists[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: data.name == "All" ? UIC.button : Colors.white,
                      borderRadius: BORDERRADIUS.br10),
                  child: Text(
                    data.name,
                    style: TextStyle(
                      color: data.name == "All" ? Colors.white : UIC.button,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Text title(BuildContext context) {
    return Text(
      "Resent Transactions",
      style: Theme.of(context)
          .textTheme
          .headline5!
          .copyWith(fontWeight: FontWeight.w800, color: UIC.button),
    );
  }

  GradientButtonFb4 seeDetails() {
    return GradientButtonFb4(
      onPressed: () => Get.back(),
      text: 'See Details',
    );
  }
}

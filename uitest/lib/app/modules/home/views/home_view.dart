import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:uitest/app/modules/home/views/no_data.dart';

import '../../../../utility/constants.dart';
import '../controllers/home_controller.dart';
import 'dashbord_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        var items2 = [
          BottomNavigationBarItem(
              icon: bottomnavigationDecoration(icon: FontAwesomeIcons.house),
              label: 'Home'),
          BottomNavigationBarItem(
              icon:
                  bottomnavigationDecoration(icon: FontAwesomeIcons.creditCard),
              label: 'Card'),
          BottomNavigationBarItem(
              icon:
                  bottomnavigationDecoration(icon: FontAwesomeIcons.squarePlus),
              label: 'Add'),
          BottomNavigationBarItem(
              icon:
                  bottomnavigationDecoration(icon: FontAwesomeIcons.dollarSign),
              label: 'Mony'),
          BottomNavigationBarItem(
              icon: bottomnavigationDecoration(icon: FontAwesomeIcons.user),
              label: 'User'),
        ];
        const children2 = [
          DashboardView(),
          NoData(title: '\nFirst Screen'),
          NoData(title: '\nSecond Screen'),
          NoData(title: '\nThree Screen'),
          NoData(title: '\nFour Screen'),
          NoData(title: '\nFive Screen')
        ];
        return Scaffold(
          backgroundColor: UIC.background,
          body: SafeArea(
            child: IndexedStack(
                index: controller.tabIndex.value, children: children2),
          ),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex.value,
              selectedItemColor: UIC.button,
              unselectedIconTheme: IconThemeData(color: UIC.text1),
              showSelectedLabels: false,
              items: items2),
        );
      },
    );
  }

  Container bottomnavigationDecoration({required IconData icon}) {
    return Container(padding: const EdgeInsets.all(10), child: FaIcon(icon));
  }
}

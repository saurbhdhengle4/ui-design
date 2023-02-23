import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utility/common_widget/heading_contanier.dart';
import '../../../../utility/common_widget/intro_card.dart';
import '../../../../utility/common_widget/menu_tab.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            IntroCard(),
            HeadingContanier(),
            MenuTab(
                icon: FontAwesomeIcons.arrowUp,
                subtitle: "Sending Payment to Clients ",
                title: 'Sent',
                mony: '150'),
            MenuTab(
                icon: FontAwesomeIcons.arrowDown,
                subtitle: 'Receiving Salary from company',
                title: 'Receive',
                mony: '250'),
            MenuTab(
                icon: FontAwesomeIcons.moneyBill1,
                subtitle: 'Loan for the Car',
                title: 'Loan',
                mony: '400'),
          ],
        ),
      ),
    );
  }
}

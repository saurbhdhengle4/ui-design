import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:uitest/app/routes/app_pages.dart';
import 'package:uitest/utility/common_widget/card_contanier.dart';

import '../constants.dart';

class MenuTab extends StatelessWidget {
  const MenuTab(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.mony})
      : super(key: key);
  final String title;
  final String subtitle;
  final IconData icon;
  final String mony;

  @override
  Widget build(BuildContext context) {
    var textstylebold = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(fontWeight: FontWeight.bold);
    var textstylesubtitle = Theme.of(context)
        .textTheme
        .caption!
        .copyWith(fontWeight: FontWeight.bold);
    return InkWell(
      onTap: () => Get.toNamed(Routes.PAYMENT),
      child: Padding(
        padding: edgeInsetsOnly,
        child: CardContainer(
          hight: SZ.getHeight(context) / 9,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: UIC.containerBackground,
                        borderRadius: BORDERRADIUS.br15),
                    child: Center(child: FaIcon(icon)),
                  ),
                ),
                SZ.w20,
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: textstylebold,
                      ),
                      SZ.h3,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            subtitle,
                            style: textstylesubtitle,
                          ),
                          Text(
                            "\$$mony ",
                            style: textstylebold,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuTab2 extends StatelessWidget {
  const MenuTab2(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.mony})
      : super(key: key);
  final String title;
  final String subtitle;
  final IconData icon;
  final String mony;

  @override
  Widget build(BuildContext context) {
    var textstylebold = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(fontWeight: FontWeight.bold);
    var textstylesubtitle = Theme.of(context)
        .textTheme
        .caption!
        .copyWith(fontWeight: FontWeight.bold);
    return InkWell(
      onTap: () {},
      child: CardContainer(
        hight: SZ.getHeight(context) / 9,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: UIC.containerBackground,
                      borderRadius: BORDERRADIUS.br15),
                  child: Center(child: FaIcon(icon)),
                ),
              ),
              SZ.w20,
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: textstylebold,
                    ),
                    SZ.h3,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          subtitle,
                          style: textstylesubtitle,
                        ),
                        Text(
                          "\$$mony ",
                          style: textstylebold,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

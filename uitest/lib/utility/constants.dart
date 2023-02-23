import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIC {
  static Color text1 = const Color(0XFF6B6B6B);
  static Color text2 = const Color(0XFFB6B6B6);
  static Color background = const Color(0xFFF1F5FE);
  static Color button = const Color(0xFF3E4685);
  static Color white = const Color(0XFFFEFEFE);
  static Color boxShadow = Colors.black.withOpacity(0.2);
  static Color containerBackground = const Color(0xFFE5E8F9);

  static final Color randomColor =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

const edgeInsetsAll = EdgeInsets.all(20.0);
const edgeInsetsOnly = EdgeInsets.symmetric(horizontal: 20, vertical: 8);

class BORDERRADIUS {
  static const bRedius40 = BorderRadius.only(
      bottomLeft: Radius.circular(40.0), bottomRight: Radius.circular(40.0));

  static BorderRadius br05 = BorderRadius.circular(05);
  static BorderRadius br10 = BorderRadius.circular(10);
  static BorderRadius br15 = BorderRadius.circular(15);
  static BorderRadius br20 = BorderRadius.circular(20);
  static BorderRadius br25 = BorderRadius.circular(25);
  static BorderRadius br30 = BorderRadius.circular(30);
  static BorderRadius br35 = BorderRadius.circular(35);
  static BorderRadius br40 = BorderRadius.circular(40);
  static BorderRadius br(double sz) => BorderRadius.circular(sz);
  static BorderRadius brOnly(double tl, double tr, double bl, double br) =>
      BorderRadius.only(
          topLeft: Radius.circular(tl),
          topRight: Radius.circular(tr),
          bottomLeft: Radius.circular(bl),
          bottomRight: Radius.circular(br));
  static RoundedRectangleBorder floatingShap =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));
}

class SZ {
  //* MediaQuery hight/ width
  static getHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static getWidth(BuildContext context) => MediaQuery.of(context).size.width;

  //* Responsive space hight
  static hm5(BuildContext context) => SizedBox(height: getHeight(context) / 20);
  static hm2(BuildContext context) => SizedBox(height: getHeight(context) / 25);
  static hm10(BuildContext context) =>
      SizedBox(height: getHeight(context) / 15);
  static hm15(BuildContext context) =>
      SizedBox(height: getHeight(context) / 10);
  static hm20(BuildContext context) => SizedBox(height: getHeight(context) / 5);

  //* static space hight
  static const h3 = SizedBox(height: 3);
  static const h5 = SizedBox(height: 5);
  static const h10 = SizedBox(height: 10);
  static const h15 = SizedBox(height: 15);
  static const h20 = SizedBox(height: 20);
  static const h25 = SizedBox(height: 25);
  static const h30 = SizedBox(height: 30);
  static const h35 = SizedBox(height: 35);
  static const h40 = SizedBox(height: 40);
  static const h45 = SizedBox(height: 45);
  static const h50 = SizedBox(height: 50);

  //* Responsive space width
  static wm05(BuildContext context) => SizedBox(width: getWidth(context) / 20);
  static wm10(BuildContext context) => SizedBox(width: getWidth(context) / 15);
  static wm15(BuildContext context) => SizedBox(width: getWidth(context) / 10);
  static wm20(BuildContext context) => SizedBox(width: getWidth(context) / 05);

  //* static space width
  static const w05 = SizedBox(width: 05);
  static const w10 = SizedBox(width: 10);
  static const w15 = SizedBox(width: 15);
  static const w20 = SizedBox(width: 20);
  static const w25 = SizedBox(width: 25);
  static const w30 = SizedBox(width: 30);
  static const w35 = SizedBox(width: 35);
  static const w40 = SizedBox(width: 40);
  static const w45 = SizedBox(width: 45);
  static const w50 = SizedBox(width: 50);
}

class Textstyle {
  static const textStyle = TextStyle(
      fontSize: 12.3, fontWeight: FontWeight.w500, color: Colors.black);
  static const buttonTextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  static const countLabelTextStyle = TextStyle(
      color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w600);
}

class BoxStyle {
  static final boxDecorationHomePage = BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10));
  static const boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(60), topLeft: Radius.circular(60)),
    color: Colors.white,
  );
}

class Constants {
  static const Duration milliseconds100 = Duration(milliseconds: 100);
  static const Duration milliseconds300 = Duration(milliseconds: 100);
  static const Duration milliseconds700 = Duration(milliseconds: 700);
  static const Duration delayM = Duration(milliseconds: 1500);
  static const Duration delayL = Duration(milliseconds: 3000);
  static const Duration delayS = Duration(milliseconds: 400);
  static const int delayExtraSmall = 100;
  static const int delaySmall = 200;
  static const int addToCartDelay = 150;
  static const int delayMedium = 500;
  static const int delayLarge = 1000;
  static const int delayXL = 1500;
  static const int delayXXL = 2000;
  static const int splashDelay = 1000;
  static const int pageLimit = 15;
  static const int oneRecord = 1;
  static const int allRecords = 0;
  static const int debouncerSearchDelay = 1;
  static const int searchMinimumCh = 2;
  static const int defaultOffset = 0;

  static const int errorMaxLines = 3;

  static const int mobileNumberLength = 10;
  static const int otpLength = 4;
  static const int addressDetailsMaxLength = 240;
  static const int addressDetailsMaxLine = 4;
  static const int editTextMaxLines = 1;
  static const int dropDownLabelMaxLines = 2;

  static const String indiaPhoneCode = "+91";
  static const String countryCode = "INDIA";

  static const int maxCodeLength = 30;
  static const int promoCodeLength = 15;
  static const int empCodeLength = 5;
  static const int descriptionLength = 240;
  static const double viewportFraction = 1.0;
  static const double defaultAspectRatio = 1.0;
  static const double lineAspectRatio = 4 / 3;
  static const Pattern userNamePattern = r"^[a-zA-Z. ']+$";
  static const int searchOneCharacter = 1;

  static const Pattern addressPattern = r"^[^\s].+[^\s]$";

  static const Pattern phonePattern = r'^[6-9]\d{9}$';

  static const Pattern code1Pattern = r'^[a-zA-Z0-9-]+$';

  static const Pattern code2Pattern = r'^[a-zA-Z-.]+$';

  static const Pattern masterCodePattern = r'^(?! )[A-Z0-9-_\/]*(?<! )$';
  static const Pattern masterNamePattern =
      r'^(?! )[A-Za-z0-9-()-_\s\/]*(?<! )$';
  static const Pattern masterProdNamePattern =
      r'^(?! )[A-Za-z0-9-&-_\s\/]*(?<! )$';
  static const Pattern masterProdHSNGtinPattern = r'^(?! )[0-9]*(?<! )$';
  static const Pattern masterProdDecimalPattern = r'^[0-9]+(\.[0-9]{1,2})?$';
  static const Pattern masterCommonPatternWithOutSpace =
      r'^(?! )[A-Za-z0-9-_\s\/]*(?<! )$';
  static const Pattern masterCommonPattern =
      r"^[A-Za-z0-9-_\.\^\,\;\:\*\'@#$=+/\[\]\\()\s\/]*$";
  static const Pattern pinCodePattern = r"[1-9]{1}[0-9]{5}";

  static List<TextInputFormatter> code1Formatters = [
    FilteringTextInputFormatter.allow(RegExp("[A-Za-z0-9-]"))
  ];
  static List<TextInputFormatter> code2Formatters = [
    FilteringTextInputFormatter.allow(RegExp("[A-Za-z-.]"))
  ];
  static List<TextInputFormatter> userNameFormatter = [
    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z. ']"))
  ];
  static List<TextInputFormatter> nameFormatter = [
    FilteringTextInputFormatter.allow(RegExp("[A-Za-z0-9. ']"))
  ];
  static List<TextInputFormatter> capitalAlphaNumeric = [
    FilteringTextInputFormatter.allow(RegExp("[A-Z0-9]")),
  ];

  static List<BoxShadow> boxShadowList = [
    const BoxShadow(
      color: Color(0x33c4c4c4),
      offset: Offset(0, 2),
      blurRadius: 19,
      spreadRadius: 0,
    )
  ];
  static List<BoxShadow> boxShadow2 = [
    BoxShadow(
      color: UIC.boxShadow,
      blurRadius: 10.0,
    ),
  ];
  static List<BoxShadow> boxShadowProduct = [
    const BoxShadow(
        color: Color(0x56282828),
        offset: Offset(0, 1),
        blurRadius: 2,
        spreadRadius: 0)
  ];
}

import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxList<PaymentList> paymentLists = <PaymentList>[
    PaymentList(name: "All"),
    PaymentList(name: "Income"),
    PaymentList(name: "Expense"),
  ].obs;
}

class PaymentList {
  PaymentList({
    required this.name,
  });

  String name;
}

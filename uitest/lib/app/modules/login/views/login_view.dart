import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uitest/app/modules/login/controllers/login_controller.dart';
import 'package:uitest/app/routes/app_pages.dart';
import 'package:uitest/utility/common_widget/card_contanier.dart';
import 'package:uitest/utility/constants.dart';

import '../../../../utility/common_widget/buttons.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIC.background,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: SZ.getHeight(context),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            CircleAvatar(
              radius: 50.0,
              backgroundColor: UIC.background,
              backgroundImage: const AssetImage(
                "assets/ic_launcher4x.png",
              ),
            ),
            const Spacer(flex: 1),
            CardContainer(
                hight: SZ.getHeight(context) / 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: TextField(
                      controller: controller.email,
                      decoration: const InputDecoration(
                        labelText: "Email Address",
                        border: InputBorder.none,
                        icon: Icon(Icons.email),
                      )),
                )),
            SZ.h25,
            CardContainer(
                hight: SZ.getHeight(context) / 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Obx(
                    () => TextField(
                      controller: controller.password,
                      obscureText: controller.passwordVisible.value,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.lock),
                        labelText: "Password",
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          focusColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          icon: Icon(
                            !controller.passwordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: UIC.text1,
                          ),
                          onPressed: () {
                            controller.passwordVisible.toggle();
                          },
                        ),
                      ),
                    ),
                  ),
                )),
            SZ.h25,
            GradientButtonFb4(
              onPressed: () => Get.toNamed(Routes.HOME),
              text: 'Login',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textButton(context, "Signup"),
                textButton(context, "Forgot Password?")
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  TextButton textButton(BuildContext context, String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        textScaleFactor: 1,
        style:
            Theme.of(context).textTheme.bodyText2!.copyWith(color: UIC.text1),
      ),
    );
  }
}

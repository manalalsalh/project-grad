import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../signin/view/signin.dart';
import '../../signup/view/signup.dart';
import '../controller/intro_controller.dart';

// ignore: must_be_immutable
class Intro3PageView extends GetResponsiveView<IntroController> {
  IntroController controller = Get.put(IntroController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/21.png',
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 59, 92, 30)),
              ),
              onPressed: () async {
                await Get.to(SignInViewPage());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("تسجيل الدخول",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 59, 92, 30)),
              ),
              onPressed: () async {
                //       // await     controller.getAllProduct();

                await Get.to(SignuPageView());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("تسجيل حساب جديد",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}

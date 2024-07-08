import 'package:first_app/intro/view/intro1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../controller/intro_controller.dart';

// ignore: must_be_immutable
class IntroPageView extends GetResponsiveView<IntroController> {
  IntroController controller = Get.put(IntroController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 200,
                height: 120,
                child: Image.asset(
                  'assets/images/4.jpg',
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
                await Get.to(Intro1PageView());
              },
              child: Text("خضرا",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          )
        ]),
      ),
    ));
  }
}

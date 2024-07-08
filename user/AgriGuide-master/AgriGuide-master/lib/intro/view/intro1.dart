import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../controller/intro_controller.dart';
import 'iintro2.dart';

// ignore: must_be_immutable
class Intro1PageView extends GetResponsiveView<IntroController> {
  IntroController controller = Get.put(IntroController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white60,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 20,
          ),
          Text('هذا التطبيق يستهدف تمكين المزارعين من الحصول',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
          Text("   على المعرفة المتكاملة وتطبيق الممارسات الزراعية",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
          Text("الجيدة وبناء قدراتهم للاستدامة الزراعية",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 250,
                height: 250,
                child: Image.asset(
                  'assets/images/11.gif',
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 100, 8, 0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.black)),
                  SizedBox(
                    width: 350,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 59, 92, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(120)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15)),
                    onPressed: () {
                      Get.to(Intro2PageView());
                    },
                    child: Text(
                      "التالي",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    ));
  }
}

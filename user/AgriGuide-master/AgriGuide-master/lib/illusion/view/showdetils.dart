import 'package:first_app/illusion/controller/illussion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

// ignore: must_be_immutable
class ShowDetailIllussionPageView
    extends GetResponsiveView<IllusionController> {
  IllusionController controller = Get.put(IllusionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () => Get.back(),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child:
                      Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      controller.element.name!,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 59, 92, 30),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: Image.asset(
                        controller.element.url!,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          controller.element.descrption!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                          style: TextStyle(
                              color: Colors.black87,
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

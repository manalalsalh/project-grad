import 'package:first_app/illusion/view/showdetils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../controller/care_controller.dart';

// ignore: must_be_immutable
class CareShowPageView extends GetResponsiveView<CareController> {
  CareController controller = Get.put(CareController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Get.back(),
                          child: const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.arrow_back_ios,
                                  size: 20, color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Center(
                          child: Text(
                            "العناية  بالنباتات",
                            style: TextStyle(
                                color: Color.fromARGB(255, 59, 92, 30),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: "Pacifico"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 400,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'بحث',
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 59, 92, 30),
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 189, 188, 188)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 59, 92, 30),
                                ),
                                borderRadius: BorderRadius.circular(13)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 107, 165, 56),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 59, 92, 30),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: controller.CareList.map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              controller.element = e;
                              // Get.to(ShowDetailIllussionPageView());
                              Get.dialog(Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 400,
                                  height: 400,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 206, 203, 203),
                                          width: 1)),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 20, 8, 20),
                                          child: Text(
                                            controller.element.name!,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Color.fromARGB(
                                                    255, 59, 92, 30),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
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
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                            },
                            child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 249, 249),
                                  border: Border.all(
                                      width: 1.2,
                                      //  color: Color.fromARGB(255, 107, 165, 56),
                                      color:
                                          Color.fromARGB(255, 213, 243, 215)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 20, 8, 20),
                                  child: Text(
                                    e.name!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 59, 92, 30),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                )),
                          ),
                        )).toList(),
                  ),
                ],
              ),
            )));
  }
}

class kindCare {
  String? name;
  String? descrption;
  kindCare(String n, String d) {
    name = n;
    descrption = d;
  }
}

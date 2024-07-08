import 'package:first_app/illusion/controller/illussion_controller.dart';
import 'package:first_app/illusion/view/showdetils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

// ignore: must_be_immutable
class IllsionShowPageView extends GetResponsiveView<IllusionController> {
  IllusionController controller = Get.put(IllusionController());
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
                            "افات نباتات الزينة",
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
                    children: controller.IllussionsList.map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              controller.element = e;
                              Get.to(ShowDetailIllussionPageView());
                              // Get.dialog(Align(
                              //   alignment: Alignment.center,
                              //   child: Container(
                              //     width: 400,
                              //     height: 400,
                              //     decoration: BoxDecoration(
                              //         color: Colors.white,
                              //         borderRadius: BorderRadius.circular(20),
                              //         border: Border.all(
                              //             color: Color.fromARGB(
                              //                 255, 206, 203, 203),
                              //             width: 1)),
                              //     child: showtype(context, e),
                              //   ),
                              // ));
                            },
                            child: Container(
                              width: 230,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 250, 249, 249),
                                border: Border.all(
                                    width: 1.2,
                                    //  color: Color.fromARGB(255, 107, 165, 56),
                                    color: Color.fromARGB(255, 213, 243, 215)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 200,
                                    child: Image.asset(
                                      e.url!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    e.name!,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 59, 92, 30),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        )).toList(),
                  ),
                ],
              ),
            )));
  }
}

class kindIllussion {
  String? url;
  String? name;
  String? descrption;
  kindIllussion(String u, String n, String d) {
    url = u;
    name = n;
    descrption = d;
  }
}

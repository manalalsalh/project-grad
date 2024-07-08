import 'package:first_app/illusion/controller/illussion_controller.dart';
import 'package:first_app/illusion/view/show_illusion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

// ignore: must_be_immutable
class IllsionPageView extends GetResponsiveView<IllusionController> {
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
                          width: 140,
                        ),
                        Center(
                          child: Text(
                            "الافات الزراعية",
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
                  Column(
                    children: [
                      typePlant('assets/images/15.jpg', "نباتات زينة", 1,
                          context, controller),
                      typePlant('assets/images/16.jpg', "محاصيل زيتية", 2,
                          context, controller),
                      typePlant('assets/images/13.jpg', "محاصيل خضار", 3,
                          context, controller),
                      typePlant('assets/images/14.jpg', "محاصيل فاكهة", 4,
                          context, controller),
                      typePlant('assets/images/11.jpg', "محاصيل حبوب", 5,
                          context, controller),
                      typePlant('assets/images/12.jpg', "محاصيل بقوليات", 6,
                          context, controller),
                    ],
                  )
                ],
              ),
            )));
  }
}

Widget typePlant(String url, String name, int n, BuildContext context,
    IllusionController c) {
  return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Tooltip(
        message: name,
        textStyle: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        child: InkWell(
          onTap: () {
            c.fullIllusssion();
            Get.to(IllsionShowPageView());
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 199, 198, 198)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      url,
                    ),
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.9), BlendMode.modulate))),
          ),
        ),
      ));
}

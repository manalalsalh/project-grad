import 'package:first_app/illusion/controller/illussion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

// ignore: must_be_immutable
class SettingAgriculturePageView extends GetResponsiveView<IllusionController> {
  IllusionController controller = Get.put(IllusionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.dialog(Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  width: 400,
                  height: 300,
                  child: AddAgriculure()),
            ));
          },
        ),
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
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      "تعديل اليات الزراعة",
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 92, 30),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "Pacifico"),
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
                              // controller.element = e;
                              // Get.to(ShowDetailIllussionPageView());
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
                                Container(
                                  width: 200,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198)),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            e.url!,
                                          ),
                                          colorFilter: ColorFilter.mode(
                                              Colors.grey.withOpacity(0.7),
                                              BlendMode.modulate))),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 40, 8, 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          e.name!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              // Color.fromARGB(255, 59, 92, 30),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Get.dialog(Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    width: 400,
                                                    height: 150,
                                                    child: delete()),
                                              ));
                                            },
                                            icon: Icon(
                                              Icons.delete,
                                              shadows: [
                                                Shadow(color: Colors.black)
                                              ],
                                              size: 40,
                                              color: Color.fromARGB(
                                                  255, 117, 134, 19),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        )).toList(),
                  ),
                ],
              ),
            )));
  }

  Widget AddAgriculure() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "اضافة الية جديدة",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 59, 92, 30),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Pacifico"),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 450,
                child: Material(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "اسم الالية الجديدة",
                        labelStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 194, 192, 192)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 194, 192, 192)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onChanged: (value) {},
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 450,
                child: Material(
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        labelText: "معلومات عن الالية الزراعية",
                        labelStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 194, 192, 192)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 194, 192, 192)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    onChanged: (value) {},
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (2 != 1) {
                  //تحقق اسم الافة غير موجود مسبقا
                  Get.snackbar(
                    "جيد",
                    "تمت اضافة الية الزراعة ",
                    icon: const Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Color.fromARGB(255, 59, 92, 30),
                    borderRadius: 20,
                    margin: const EdgeInsets.all(15),
                    colorText: Colors.white,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    forwardAnimationCurve: Curves.easeOutBack,
                  );
                } else {
                  Get.snackbar(
                    "خطا",
                    "هذه الالية موجودة مسبقا",
                    icon: const Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Color.fromARGB(255, 59, 92, 30),
                    borderRadius: 20,
                    margin: const EdgeInsets.all(15),
                    colorText: Colors.white,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    forwardAnimationCurve: Curves.easeOutBack,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 59, 92, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
              child: Text(
                "اضافة ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget delete() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "هل انت متاكد من الحذف ؟",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.black,
              // Color.fromARGB(255, 59, 92, 30),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        SizedBox(
          height: 0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 59, 92, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30)),
                child: Text(
                  "نعم ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 59, 92, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30)),
                child: Text(
                  "لا  ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    );
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

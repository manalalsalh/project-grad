import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controller/profile_controller.dart';

// ignore: must_be_immutable
class EditprofileViewPage extends GetResponsiveView<ProfileController> {
  @override
  ProfileController controller = Get.put(ProfileController());
  final _formfield = GlobalKey<FormState>();
  final passcontroller = TextEditingController();
  final Confirmpasscontroller = TextEditingController();

  EditprofileViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formfield,
          child: Column(children: [
            InkWell(
              onTap: () => Get.back(),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child:
                      Icon(Icons.arrow_back_ios, size: 15, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Center(
              child: Text(
                "تعديل الملف الشخصي",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 59, 92, 30),
                    fontFamily: "Pacifico"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 450,
                  child: Material(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          labelText: "تعديل الاسم ",
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
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          labelText: "تعديل البريد الالكتروني",
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
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          labelText: "تعديل رقم الهاتف",
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
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.location_pin,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          labelText: "تعديل العنوان",
                          labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
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
            // SizedBox(
            //   height: 50,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formfield.currentState!.validate()) {
                    // Get.to(HomePage());
                    Get.snackbar(
                      "جيد",
                      "كلمة صحيحة",
                      icon: const Icon(Icons.person, color: Colors.white),
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.blueGrey,
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
                      "تحقق من الحقول",
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30)),
                child: Text(
                  "تعديل ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(
              height: 10,
              color: Colors.grey,
              thickness: 1,
            ),
            Center(
              child: Text(
                "تغيير كلمة المرور",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 59, 92, 30),
                    fontFamily: "Pacifico"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 450,
                  child: Material(
                    child: TextFormField(
                      controller: passcontroller,
                      obscureText: controller.passtoggle.value,
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.passtoggle.value =
                                  !controller.passtoggle.value;
                            },
                            child: Icon(controller.passtoggle.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          labelText: "كلمة المرور الجديدة",
                          labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل كلمة السر الجديدة";
                        } else if (passcontroller.text.length < 6) {
                          return "ادخل كلمة السر الجديدة الصحيحة";
                        }
                        return null;
                      },
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
                      controller: passcontroller,
                      obscureText: controller.passtoggle.value,
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.passtoggle.value =
                                  !controller.passtoggle.value;
                            },
                            child: Icon(controller.passtoggle.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          labelText: "تاكيد كلمة المرور",
                          labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل كلمة السر الجديدة";
                        } else if (Confirmpasscontroller.text.length < 6) {
                          return "ادخل كلمة السر الجديدة الصحيحة";
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (Confirmpasscontroller.text == passcontroller.text) {
                    if (_formfield.currentState!.validate()) {
                      Get.snackbar(
                        "جيد",
                        "كلمة صحيحة",
                        icon: const Icon(Icons.person, color: Colors.white),
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Color.fromARGB(255, 45, 172, 50),
                        borderRadius: 20,
                        margin: const EdgeInsets.all(15),
                        colorText: Colors.white,
                        duration: const Duration(seconds: 4),
                        isDismissible: true,
                        forwardAnimationCurve: Curves.easeOutBack,
                      );
                    }
                  } else {
                    Get.snackbar(
                      "خطا",
                      "تحقق من كلمة السر",
                      icon: const Icon(Icons.person, color: Colors.white),
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Color.fromARGB(255, 45, 172, 50),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30)),
                child: Text(
                  "تاكيد",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

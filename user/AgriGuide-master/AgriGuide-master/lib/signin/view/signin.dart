import 'package:first_app/signin/view/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../showPlant/view/menu.dart';
import '../controller/sigin_controller.dart';

//import 'package:getwidget/getwidget.dart';

// ignore: must_be_immutable
class SignInViewPage extends GetResponsiveView<SiginController> {
  @override
  SiginController controller = Get.put(SiginController());
  final _formfield = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  SignInViewPage({super.key});
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
                      Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'تسجيل الدخول',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromARGB(255, 59, 92, 30),
                    fontFamily: "Pacifico"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 400,
                  height: 260,
                  child: Image.asset('assets/images/32.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 450,
                child: Material(
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 107, 165, 56),
                        ),
                        labelText: "ادخل بريدك الالكتروني",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3,
                              //Color.fromARGB(255, 107, 165, 56)
                              color: Color.fromARGB(255, 59, 92, 30)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      bool emailvalue = RegExp(
                              r"^[a-zA-Z0-9.!#$%&'*+-/+?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (value.isEmpty) {
                        return "ادخل بريدك الالكتروني";
                      } else if (!emailvalue) {
                        return "  ادخل بريدك الالكتروني الصحيح";
                      }
                      return null;
                    },
                    onChanged: (Value) {},
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 450,
                  child: Obx(
                    () => TextFormField(
                      controller: passcontroller,
                      obscureText: controller.passtoggle.value,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color.fromARGB(255, 107, 165, 56),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.passtoggle.value =
                                  !controller.passtoggle.value;
                            },
                            child: Icon(controller.passtoggle.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          labelText: "ادخل كلمة السر",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 59, 92, 30)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 59, 92, 30)),
                            borderRadius: BorderRadius.circular(15),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "ادخل كلمة السر";
                        }
                        // } else if (passcontroller.text.length < 6) {
                        //   return "PasswordLengthShouldBeMoreThan6Charachters".tr;
                        // }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      onPressed: () {
                        Get.to(ResetPasswordViewPage());
                        // Get.rootDelegate.toNamed(Routes.password);
                      },
                      child: Text(
                        "هل نسيت كلمة السر ؟",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formfield.currentState!.validate()) {
                    Get.to(MenuPageView());
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
                  } else {
                    Get.snackbar(
                      "خطا",
                      "تحقق من الحقول",
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
                        vertical: 20, horizontal: 50)),
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

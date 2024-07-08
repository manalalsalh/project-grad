import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../generted/shared/util.dart';
import '../controller/signup_controller.dart';

// ignore: must_be_immutable
class SignuPageView extends GetResponsiveView<SignUpController> {
  SignUpController controller = Get.put(SignUpController());
  @override
  // ignore: override_on_non_overriding_member
  final _formfield = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  Uint8List? image;

  SignuPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            width: 10,
            height: 25,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              " حساب جديد",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: const Color.fromARGB(255, 33, 110, 38),
                  fontFamily: "Pacifico"),
            ),
          ),
          const SizedBox(
            width: 10,
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: Text(
                "انشا حساب جديد",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey[600]),
              )),
          // Center(
          //     child: Column(
          //   children: [
          //     const SizedBox(width: 170),
          //     Material(child: Imageprofile(controller)),
          //   ],
          // )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 450,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      color: Color.fromARGB(255, 107, 165, 56),
                    ),
                    labelText: "الاسم الكامل",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    )),
                onChanged: (value) {},
                validator: (value) {
                  // for number
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "الاسم الاول";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 450,
              child: TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 107, 165, 56),
                    ),
                    labelText: "البريد الالكتروني",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    )),
                onChanged: (value) {},
                validator: (value) {
                  bool emailvalue = RegExp(
                          r"^[a-zA-Z0-9.!#$%&'*+-/+?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (value.isEmpty) {
                    return "البريد الالكتروني";
                  } else if (!emailvalue) {
                    return "ادخل البريد الالكتروني الصحيح ";
                  }
                  return null;
                },
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
                              width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "ادخل كلمة السر";
                      } else if (passcontroller.text.length < 6) {
                        return "PasswordLengthShouldBeMoreThan6Charachters".tr;
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
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.cast_for_education,
                      color: Color.fromARGB(255, 107, 165, 56),
                    ),
                    labelText: "التعليم/الشهادة العلمية",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    )),
                onChanged: (value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "ادخل التعليم بطريقة صحيحة";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 450,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_city,
                      color: Color.fromARGB(255, 107, 165, 56),
                    ),
                    labelText: "رقم الموبايل ",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    )),
                onChanged: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  if (!RegExp(r'^(\+|00)?[0-9]+$').hasMatch(value)) {
                    return 'Please enter a valid phone number';
                  }

                  return null; // Return null when the input is valid
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 450,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.location_city,
                      color: Color.fromARGB(255, 107, 165, 56),
                    ),
                    labelText: "الموقع/العنوان",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30)),
                      borderRadius: BorderRadius.circular(15),
                    )),
                onChanged: (value) {},
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "ادخل العنوان الصحيح";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          Center(
              child: Column(
            children: [
              const SizedBox(width: 170),
              Material(child: Imageprofile(controller)),
            ],
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Center(
                          child: Column(
                        children: [
                          const SizedBox(width: 170),
                          Material(child: Imageprofile(controller)),
                        ],
                      ));
                    },
                    child: Text(
                      "اضف صورة الشهادة الجامعية ان وجدت",
                      style: TextStyle(
                          color: Colors.grey[800], fontWeight: FontWeight.bold),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formfield.currentState!.validate()) {
                  print("Data Added Successfully");
                  // emailcontroller.clear();
                  // passcontroller.clear();
                  // Get.to(HomePage());
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 59, 92, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
              child: Text(
                "تاكيد",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    ));
  }

  Widget Imageprofile(SignUpController controller) {
    return Center(
      child: Stack(
        children: <Widget>[
          Obx(() => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 3, color: Color.fromARGB(255, 59, 92, 30))),
                  child: controller.stringPickImage.value.isNotEmpty
                      ? Utility.imageFromBase64String(
                          controller.stringPickImage.value, 200, 200)
                      : image == null
                          ? Image.asset(
                              'assets/images/3.png',
                              width: 200,
                              height: 200,
                              fit: BoxFit.fill,
                            )
                          : Utility.imageFromBase64String(
                              Utility.base64String(image!), 200, 200),
                ),
              )),
          Positioned(
              bottom: 20.0,
              right: 20.0,
              child: InkWell(
                onTap: () async {
                  openBottomSheet(controller);
                },
                child: const Icon(
                  Icons.camera_alt,
                  color: Color.fromARGB(255, 66, 66, 66),
                  size: 28.0,
                ),
              ))
        ],
      ),
    );
  }
}

void openBottomSheet(SignUpController controller) {
  Get.bottomSheet(
    Container(
      height: 120.0,
      width: 500,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              " اختر الصورة",
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 59, 92, 30),
                    foregroundColor: Colors.white,
                    mini: true,
                    onPressed: () {
                      controller.pickImageFun();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(Icons.image),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" المعرض"),
                  ),
                ],
              )
            ],
          ),
          // OutlinedButton(
          //   onPressed: () {
          //     Get.back();
          //   },
          //   child: const Text('Close'),
          // ),
        ],
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

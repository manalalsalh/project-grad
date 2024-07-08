import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controller/profile_controller.dart';
import 'edit_profile.dart';

// ignore: must_be_immutable
class ProfilePageView extends GetResponsiveWidget<ProfileController> {
  ProfileController controller = Get.put(ProfileController());
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  ProfilePageView({super.key});
  Uint8List? image;
  @override
  Widget builder() {
    return Container(
      child: SizedBox(
        height: screen.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                child: InkWell(
                  onTap: () => Get.back(),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back_ios,
                          size: 15, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GFAvatar(
                  size: 150,
                  backgroundImage: AssetImage('assets/images/fa1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ahmad Ahmad",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Color.fromARGB(255, 59, 92, 30),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 199, 197, 195).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 8,
                    ),
                    con(Icons.email, " www.Ahmadi@gmail.com"),
                    con(Icons.person_3_outlined, " Aryhitucture "),
                    con(Icons.location_pin, " Aleppo _Al Forqan"),
                    con(Icons.phone_outlined, " 0966666666"),
                    SizedBox(
                      height: 8,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    Get.dialog(Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 400,
                          height: 200,
                          child: Password()),
                    ));
                    // Get.to(EditprofileViewPage());
                  },
                  child: Text(
                    "تعديل الملف الشخصي ؟",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 107, 165, 56),
                        decoration: TextDecoration.none),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Password() {
    return Column(
      children: [
        Center(
          child: Text(
            "ادخل كلمة المرور السابقة",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Color.fromARGB(255, 59, 92, 30),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 350,
            child: Obx(
              () => Material(
                child: TextFormField(
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
                            width: 1, color: Color.fromARGB(255, 59, 92, 30)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color.fromARGB(255, 59, 92, 30)),
                        borderRadius: BorderRadius.circular(15),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "ادخل كلمة السر";
                    }

                    return null;
                  },
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Get.to(EditprofileViewPage());
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 59, 92, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
            child: Text(
              "تاكيد",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget con(IconData iconData, String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            iconData,
            color: Color.fromARGB(255, 59, 92, 30),
            weight: 18,
          ),
          Text(name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                color: Colors.black87,
              )),
        ],
      ),
    );
  }
}

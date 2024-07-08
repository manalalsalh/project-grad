import 'package:first_app/intro/view/intro1.dart';
import 'package:first_app/showPlant/view/add_plant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../agriculture/view/setting.dart';
import '../../illusion/view/add_illusion.dart';
import '../../illusion/view/setting.dart';
import '../../showPlant/view/setting_plant.dart';
import '../../showPlant/view/update_plant.dart';
import '../controller/setting_controller.dart';

// ignore: must_be_immutable
class SettingPageView extends GetResponsiveView<SettingsController> {
  SettingsController controller = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: [
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
                  " الاعدادات",
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 92, 30),
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontFamily: "Pacifico"),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            InkWell(
                onTap: () {
                  Get.to(AddPlantPageView());
                },
                child: CardSetting("اضافة نبتة جديدة", Icons.add)),
            InkWell(
                onTap: () {
                  Get.to(SettingPlantPageView());
                },
                child: CardSetting("معلومات نبتة", Icons.edit)),
            InkWell(
                onTap: () {
                  Get.to(SettinfIllusionPageView());
                },
                child: CardSetting("افة زراعية", Icons.edit)),
            InkWell(
                onTap: () {
                  Get.to(SettingAgriculturePageView());
                },
                child: CardSetting("الية زراعة", Icons.edit)),
          ],
        ),
        Container(
            width: 100, height: 150, child: Image.asset("assets/images/1a.png"))
      ]),
    ));
  }

  Widget CardSetting(String name, IconData data) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 10, 8),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 59, 92, 30),
                width: 1.3,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                data,
                size: 28,
                color: Color.fromARGB(255, 154, 185, 126),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 59, 92, 30),
                ),
              ),
            ]),
          ),
        ));
  }
}

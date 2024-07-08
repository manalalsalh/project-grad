import 'package:first_app/agriculture/view/agriculture.dart';
import 'package:first_app/care/view/care.dart';
import 'package:first_app/illusion/view/illusion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import '../../chat/view/chat.dart';
import '../../profile/view/profile.dart';
import '../../settings/view/setting.dart';
import '../controller/showplantcontroller.dart';
import 'showplant.dart';

// ignore: must_be_immutable
class MenuPageView extends GetResponsiveView<ShowPlantController> {
  ShowPlantController controller = Get.put(ShowPlantController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: Color.fromARGB(255, 59, 92, 30),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "انواع المحاصيل والنباتات",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Tooltip(
                    message: "الاعدادات",
                    child: IconButton(
                        onPressed: () {
                          Get.dialog(Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              color: Colors.white,
                              width: 200,
                              height: 900,
                              child: Getwid(context),
                            ),
                          ));
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 28,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(60))),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 500,
                        height: 580,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            typePlant('assets/images/15.jpg', "نباتات زينة", 1,
                                controller),
                            typePlant('assets/images/16.jpg', "محاصيل زيتية", 2,
                                controller),
                            typePlant('assets/images/13.jpg', "محاصيل خضار", 3,
                                controller),
                            typePlant('assets/images/14.jpg', "محاصيل فاكهة", 4,
                                controller),
                            typePlant('assets/images/11.jpg', "محاصيل حبوب", 5,
                                controller),
                            typePlant('assets/images/12.jpg', "محاصيل بقوليات",
                                6, controller),
                          ],
                        ),
                      )
                    ]),
              ),
            ))
          ]),
    ));
  }

  Widget typePlant(
      String url, String name, int n, ShowPlantController controller) {
    return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Tooltip(
          message: name,
          textStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          child: InkWell(
            onTap: () {
              controller.nameWidget = name;
              controller.fullFlowers();
              Get.to(ShowPlantPageView());
            },
            child: Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 2,
                      color: const Color.fromARGB(255, 199, 198, 198)),
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

  Widget Getwid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 236, 234, 234),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/1a.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
                  Center(
                      child: Text("Ahmad Ahmad",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ))),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        Get.to(ProfilePageView());
                      },
                      child: icontextt("الملف الشخصي", Icons.person)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "_________________________",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Material(
                    child: InkWell(
                        onTap: () {
                          Get.to(CarePageView());
                        },
                        child: icontext("طرق العناية "))),
                Material(
                  child: InkWell(
                      onTap: () {
                        Get.to(IllsionPageView());
                      },
                      child: icontext("الافات الزراعية")),
                ),
                // Material(
                //     child: InkWell(
                //         onTap: () {
                //           Get.to(StoragePageView());
                //         },
                //         child: icontext("طرق التخزين"))),
                // Material(
                //     child: InkWell(
                //         onTap: () {
                //           Get.to(IrrigationPageView());
                //         },
                //         child: icontext("طرق الري"))),
                Material(
                    child: InkWell(
                        onTap: () {
                          Get.to(AgriculturePageView());
                        },
                        child: icontext("الية الزراعة"))),
                // Material(
                //     child: InkWell(
                //         onTap: () {
                //           Get.to(SeasonsPageView());
                //         },
                //         child: icontext("المواسم"))),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "_________________________",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42),
                  child: Material(
                    child: InkWell(
                        onTap: () {
                          Get.to(ChatPageView());
                        },
                        child: icontextt("المحادثات", Icons.call)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 82),
                  child: icontextt("حول", Icons.help_outline_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: icontextt("تسجيل الخروج", Icons.exit_to_app_rounded),
                ),
                Material(
                  child: InkWell(
                      onTap: () {
                        Get.to(SettingPageView());
                      },
                      child: icontext("الاعدادات")),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget icontext(String text) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black87,
              decoration: TextDecoration.none),
        ),
      )),
    );
  }

  Widget icontextt(
    String text,
    IconData iconData,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Container(
              child: Text(
            text,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                decoration: TextDecoration.none),
          )),
          SizedBox(
            width: 5,
          ),
          Icon(
            iconData,
            color: Color.fromARGB(255, 59, 92, 30),
            size: 23,
          )
        ],
      ),
    );
  }
}

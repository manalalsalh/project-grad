import 'package:first_app/chat/controller/chat_controller.dart';
import 'package:first_app/chat/models/conver.dart';
import 'package:first_app/chat/view/conversition_List.dart';
import 'package:first_app/intro/view/intro1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

// ignore: must_be_immutable
class ConertionHeaderPageView extends GetResponsiveView<ChatController> {
  ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "المحادثات",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Material(
                          child: InkWell(
                            onTap: () {
                              Get.dialog(Align(
                                alignment: Alignment.center,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 400,
                                    height: 200,
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text(
                                            "ادخل رقم  الهاتف ",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.none,
                                              color: Color.fromARGB(
                                                  255, 59, 92, 30),
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
                                                    prefixIcon: const Icon(
                                                      Icons.location_city,
                                                      color: Color.fromARGB(
                                                          255, 107, 165, 56),
                                                    ),
                                                    labelText: "رقم الموبايل ",
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                              width: 3,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      59,
                                                                      92,
                                                                      30)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                              width: 3,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      59,
                                                                      92,
                                                                      30)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    )),
                                                onChanged: (value) {},
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Please enter your phone number';
                                                  }
                                                  if (!RegExp(
                                                          r'^(\+|00)?[0-9]+$')
                                                      .hasMatch(value)) {
                                                    return 'Please enter a valid phone number';
                                                  }

                                                  return null; // Return null when the input is valid
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(
                                                    255, 59, 92, 30),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20,
                                                        horizontal: 50)),
                                            child: Text(
                                              "بحث",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ));
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.pink[50],
                              ),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Colors.pink,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "اضافة جديد",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "بحث  ...",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          contentPadding: EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100)),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: chatUsers.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 16),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ConversationList(
                          name: chatUsers[index].name,
                          messageText: chatUsers[index].messageText,
                          imageUrl: chatUsers[index].imageURL,
                          time: chatUsers[index].time,
                          isMessageRead:
                              (index == 0 || index == 3) ? true : false,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

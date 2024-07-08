import 'package:first_app/chat/controller/chat_controller.dart';
import 'package:first_app/intro/view/intro1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

import 'converstion_Header.dart';

// ignore: must_be_immutable
class ChatPageView extends GetResponsiveView<ChatController> {
  ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: ConertionHeaderPageView()),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.grey.shade600,
      //   selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      //   unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       label: "Chats",

      //       // title: Text("Chats"),
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.group_work), label: "Channels"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_box),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}

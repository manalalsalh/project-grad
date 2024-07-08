import 'package:flutter/cupertino.dart';

class ChatUsers {
  String name;
  String messageText;
  String imageURL;
  String time;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageURL,
      required this.time});
}

List<ChatUsers> chatUsers = [
  ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "assets/images/fra1.png",
      time: "Now"),
  ChatUsers(
      name: "Glady's Murphy",
      messageText: "That's Great",
      imageURL: "assets/images/fra2.png",
      time: "Yesterday"),
  ChatUsers(
      name: "Jorge Henry",
      messageText: "Hey where are you?",
      imageURL:  "assets/images/fra1.png",
      time: "31 Mar"),
  ChatUsers(
      name: "Philip Fox",
      messageText: "Busy! Call me in 20 mins",
      imageURL: 'assets/images/fa1.png',
      time: "28 Mar"),
  ChatUsers(
      name: "Debra Hawkins",
      messageText: "Thankyou, It's awesome",
      imageURL:  "assets/images/fra1.png",
      time: "23 Mar"),
  ChatUsers(
      name: "Jacob Pena",
      messageText: "will update you in evening",
      imageURL: "images/userImage6.jpeg",
      time: "17 Mar"),
  ChatUsers(
      name: "Andrey Jones",
      messageText: "Can you please share the file?",
      imageURL: "images/userImage7.jpeg",
      time: "24 Feb"),
  ChatUsers(
      name: "John Wick",
      messageText: "How are you?",
      imageURL: "images/userImage8.jpeg",
      time: "18 Feb"),
];

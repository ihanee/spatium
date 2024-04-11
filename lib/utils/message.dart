import 'package:flutter/material.dart';

class Message {
  static scaffoldMessenger(context, message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message, style: const TextStyle(color: Color(0xffFFFFFF))),
      backgroundColor: const Color.fromARGB(255, 78, 163, 81),
    ));
  }

  static scaffoldMessengerErrorForm(context, message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message, style: const TextStyle(color: Color(0xffFFFFFF))),
      backgroundColor: Colors.red,
    ));
  }
}

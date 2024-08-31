import 'package:flutter/material.dart';
import 'package:trogon_machinetest/Model/chatmodel.dart';

final iconList = <IconData>[
  Icons.keyboard,
  Icons.arrow_forward_ios,
];
final List<ChatMessage> messages = [
  ChatMessage(message: "Hello!", isSentByMe: false),
  ChatMessage(message: "Hi, how are you?", isSentByMe: true),
  ChatMessage(message: "I'm good, thanks!", isSentByMe: false),
];

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
final List<Map<String, String>> wordPairs = [
  {'english': 'how', 'malayalam': 'എങ്ങനെ'},
  {'english': 'what', 'malayalam': 'എന്ത്'},
  {'english': 'when', 'malayalam': 'എപ്പോള്‍'},
  {'english': 'where', 'malayalam': 'എവിടെ'},
  {'english': 'why', 'malayalam': 'എന്തുകൊണ്ട്'},
  {'english': 'which', 'malayalam': 'ഏത്'},
  {'english': 'who', 'malayalam': 'ആര്'},
  {'english': 'can', 'malayalam': 'കഴിയും'},
  {'english': 'do', 'malayalam': 'ചെയ്യുക'},
  {'english': 'go', 'malayalam': 'പോകുക'},
  {'english': 'say', 'malayalam': 'പറയുക'},
  {'english': 'see', 'malayalam': 'കാണുക'},
  {'english': 'use', 'malayalam': 'ഉപയോഗിക്കുക'},
  {'english': 'get', 'malayalam': 'കിട്ടുക'},
  {'english': 'make', 'malayalam': 'ഉണ്ടാക്കുക'},
];
final List<String> plans = ['Basic', 'Gold', 'Platinum'];

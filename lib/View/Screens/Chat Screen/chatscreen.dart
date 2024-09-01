import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/Model/chatmodel.dart';
import 'package:trogon_machinetest/View/Screens/Chat%20Screen/Widgets/chatlistmessage.dart';
import 'package:trogon_machinetest/View/Screens/Chat%20Screen/Widgets/chatppbar.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/flashcardscreen.dart';
import 'package:trogon_machinetest/View/Screens/List/list.dart'; // Import your home screen
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;
  var _bottomNavIndex = 0; // default index of the first screen
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatAppBar(),
      body: Column(
        children: [
          const Chatmesagelist(),
          if (_bottomNavIndex == 0)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      // Handle sending the message
                      setState(() {
                        messages.add(ChatMessage(
                          message: _messageController.text,
                          isSentByMe: true,
                        ));
                        _messageController.clear();
                      });
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3,
        shape: const CircleBorder(
            side: BorderSide(color: UtilColors.primarycolor)),
        backgroundColor: UtilColors.primarycolor,
        child: const Image(image: AssetImage('assets/images/chatlogo.png')),
        onPressed: () {
          // Handle button press
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            if (index == 1) {
              // Navigate to the home page when the second icon (arrow) is pressed
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        FlashCardScreen()), // Replace HomeScreen with your home page widget
              );
            } else {
              _bottomNavIndex = index;
              // Explicitly unfocus to prevent keyboard from popping up
              FocusScope.of(context).unfocus();
            }
          });
        },
      ),
    );
  }
}

final iconList = <IconData>[
  Icons.keyboard,
  Icons.arrow_forward_ios,
];

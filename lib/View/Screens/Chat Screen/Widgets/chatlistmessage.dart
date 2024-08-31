import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/List/list.dart';

class Chatmesagelist extends StatelessWidget {
  const Chatmesagelist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Align(
            alignment: message.isSentByMe
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: message.isSentByMe
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                if (!message.isSentByMe) ...[
                  const CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage('assets/images/chatlogo.png'),
                  ),
                  const SizedBox(width: 8),
                ],
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.fromLTRB(
                      24, 24, 24, 24), // 0px, 24px, 24px, 24px
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  decoration: BoxDecoration(
                    color: message.isSentByMe
                        ? Colors.white
                        : Color(0xFF122E57), // User side color
                    borderRadius: BorderRadius.only(
                      topLeft: message.isSentByMe
                          ? const Radius.circular(24)
                          : const Radius.circular(0),
                      topRight: message.isSentByMe
                          ? const Radius.circular(0)
                          : const Radius.circular(24),
                      bottomLeft: const Radius.circular(24),
                      bottomRight: const Radius.circular(24),
                    ),
                  ),
                  child: Text(
                    message.message,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: message.isSentByMe
                          ? Colors.black
                          : Colors.white, // Set text color based on sender
                    ),
                  ),
                ),
                if (message.isSentByMe) ...[
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/otheruser.png'),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

final iconList = <IconData>[
  Icons.keyboard,
  Icons.arrow_forward_ios,
];

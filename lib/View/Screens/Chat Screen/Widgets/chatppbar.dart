import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, // Replace with your desired color
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: CircleBorder(side: BorderSide(color: Colors.grey))),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
      ),
      title: Row(
        children: [
          Image.asset('assets/images/chatlogo.png'),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'JOHN DOE',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 10 / 16,
                    color: Colors.black, // Replace with your desired color
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 10 / 12,
                      color: UtilColors
                          .primarycolor // Replace with your desired color
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

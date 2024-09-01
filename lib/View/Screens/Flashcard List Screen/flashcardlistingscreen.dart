import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20List%20Screen/Widgets/flashcarditem.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20List%20Screen/Widgets/searchtextfield.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/flashcardscreen.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';
import 'package:trogon_machinetest/View/Screens/Widgets/Mybutton.dart';

class Flashcardlistingscreen extends StatelessWidget {
  const Flashcardlistingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 33,
              ))
        ],
        title: Text(
          'Flash Card',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            height: 10 / 16,
            color: UtilColors.textblack,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: SearchTextField(),
          ),
          const flashcarditem()
        ],
      ),
    );
  }
}

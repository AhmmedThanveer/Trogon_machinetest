import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/flashcardscreen.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';
import 'package:trogon_machinetest/View/Screens/Widgets/Mybutton.dart';

class flashcarditem extends StatelessWidget {
  const flashcarditem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                height: 220,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: UtilColors.packagecolor),
                  color: const Color(0xFFF9F0CD),
                ),
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: UtilColors.packagecolor),
                          color: const Color(0xFFFFFCF0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Everyday Phrases',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 10 / 16,
                                      color: UtilColors.textblack,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert_sharp),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Master common expressions used in daily conversations.',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         Flashcardlistingscreen(),
                                        //   ),
                                        // );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: UtilColors
                                            .primarycolor, // Background color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              7), // Rounded corners
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ), // Padding inside the button
                                        textStyle: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      child: const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: UtilColors.whitecolor,
                                          ),
                                          Text(
                                            ' Add card',
                                            style: TextStyle(
                                              color: UtilColors.whitecolor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Mybutton(
                                        text: 'Practice',
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    FlashCardScreen(),
                                              ));
                                        }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_flip_card/controllers/flip_card_controllers.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/List/list.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class Cardflipword extends StatelessWidget {
  const Cardflipword({
    super.key,
    required PageController pageController,
    required int currentPageIndex,
    required List<FlipCardController> flipCardControllers,
  })  : _pageController = pageController,
        _currentPageIndex = currentPageIndex,
        _flipCardControllers = flipCardControllers;

  final PageController _pageController;
  final int _currentPageIndex;
  final List<FlipCardController> _flipCardControllers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        itemCount: wordPairs.length,
        pageSnapping: true,
        controller: _pageController,
        itemBuilder: (context, index) {
          final wordPair = wordPairs[index];
          final isCurrentPage = index == _currentPageIndex;

          return Transform.scale(
            scale: isCurrentPage ? 1.0 : 0.95, // Slightly decrease scale
            child: FlipCard(
              onTapFlipping: true,
              axis: FlipAxis.horizontal,
              rotateSide: RotateSide.top,
              controller: _flipCardControllers[index],
              frontWidget: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: isCurrentPage ? 350 : 330, // Adjust height
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: isCurrentPage ? 8 : 4,
                  color: UtilColors.primarycolor,
                  child: Container(
                    height: 350,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          wordPair['english']!,
                          style: GoogleFonts.poppins(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            height: 10 / 16,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.volume_up_outlined,
                                color: UtilColors.whitecolor,
                              ),
                            ),
                            Text(
                              wordPair['english']!,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                height: 10 / 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            if (index < wordPairs.length - 1) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          child: const SizedBox(
                            height: 70,
                            width: 70,
                            child: Card(
                              elevation: 3,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: UtilColors.primarycolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              backWidget: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: isCurrentPage ? 320 : 300, // Adjust height
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: isCurrentPage ? 8 : 4,
                  color: Colors.green,
                  child: Container(
                    height: 320,
                    alignment: Alignment.center,
                    child: Text(
                      wordPair['malayalam']!,
                      style: GoogleFonts.poppins(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        height: 10 / 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

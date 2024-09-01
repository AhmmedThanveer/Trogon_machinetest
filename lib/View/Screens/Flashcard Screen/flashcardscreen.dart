import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:trogon_machinetest/View/Screens/Chat%20Screen/chatscreen.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/Widets/appbar.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/Widets/cardflip.dart';
import 'package:trogon_machinetest/View/Screens/Flashcard%20Screen/Widets/progressindicator.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';
import 'package:trogon_machinetest/View/Screens/List/list.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:trogon_machinetest/View/Screens/Widgets/Mybutton.dart';

class FlashCardScreen extends StatefulWidget {
  @override
  _FlashCardScreenState createState() => _FlashCardScreenState();
}

class _FlashCardScreenState extends State<FlashCardScreen> {
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 2);
  final List<FlipCardController> _flipCardControllers = [];
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < wordPairs.length; i++) {
      _flipCardControllers.add(FlipCardController());
    }

    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (var controller in _flipCardControllers) {
      // controller.dispose();
    }
    super.dispose();
  }

  double get progress {
    return (_currentPageIndex + 1) / wordPairs.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          progressindicator(
              progress: progress, currentPageIndex: _currentPageIndex),
          Cardflipword(
              pageController: _pageController,
              currentPageIndex: _currentPageIndex,
              flipCardControllers: _flipCardControllers),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Mybutton(text: 'Previous', onPressed: () {}),
                Mybutton(
                    text: 'Next',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

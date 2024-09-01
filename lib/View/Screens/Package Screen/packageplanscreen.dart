import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/List/list.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/bottompackagescreen.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/clippercontainer.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/tabbutton.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/bottompackagescreen.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/clippercontainer.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/Widgets/tabbutton.dart';
import 'package:trogon_machinetest/View/Screens/Utill/colors.dart';

class PackagePlanScreen extends StatefulWidget {
  const PackagePlanScreen({super.key});

  @override
  _PackagePlanScreenState createState() => _PackagePlanScreenState();
}

class _PackagePlanScreenState extends State<PackagePlanScreen> {
  String selectedPlan = '';

  // final List<String> plans = ['Basic', 'Standard', 'Premium'];

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: UtilColors.primarycolor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.32),
                  shape: const CircleBorder()),
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: UtilColors.whitecolor,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Stack(
          clipBehavior: Clip.none, // Allows the ZigzagContainer to overflow
          children: [
            Column(
              children: [
                Container(
                  height: screenH / 3.5,
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: UtilColors.primarycolor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          'Upgrade',
                          style: GoogleFonts.poppins(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: UtilColors.whitecolor,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          'Unlock premium features and take your English skills to the next level.',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: UtilColors.whitecolor,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 25, right: 10, left: 10),
                        child: Row(
                          children: [
                            for (int i = 0; i < plans.length; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: TabButton(
                                  isSelected: selectedPlan == plans[i],
                                  text: plans[i],
                                  onTap: () {
                                    setState(() {
                                      selectedPlan = plans[i];
                                    });
                                  },
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: screenH / 3.5 - 20, // Adjust the vertical position
              left: (screenW - 322) / 2, // Center the ZigzagContainer
              child: ZigzagContainer(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const packagebottom(),
    );
  }
}

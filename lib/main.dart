import 'package:flutter/material.dart';
import 'package:trogon_machinetest/View/Screens/Chat%20Screen/chatscreen.dart';
import 'package:trogon_machinetest/View/Screens/Package%20Screen/packageplanscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: PackagePlanScreen());
  }
}

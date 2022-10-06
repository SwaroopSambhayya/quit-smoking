import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_can/controllers/user_controller.dart';
import 'package:i_can/screens/bottom_bar.dart';
import 'package:i_can/screens/on_boarding_1.dart';
import 'package:i_can/screens/on_boarding_2.dart';

import 'package:get/get.dart';

import './screens/on_boarding_1.dart';
import './controllers/user_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    UserController userController = Get.put(UserController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Can',
      theme: ThemeData(
        textTheme: GoogleFonts.acmeTextTheme(),
        scaffoldBackgroundColor: const Color(0xFF1F2120),
        cardColor: const Color(0xff313433),
        focusColor: const Color(0xff636866),
      ),
      getPages: [
        GetPage(name: OnBoardingOne.routeName, page: () => OnBoardingOne()),
        GetPage(name: OnBoardingTwo.routeName, page: () => OnBoardingTwo()),
      ],
      home: OnBoardingOne(),
    );
  }
}

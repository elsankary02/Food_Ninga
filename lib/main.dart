import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/features/splash/splash_view.dart';

void main() {
  runApp(const FoodNinja());
}

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: const Color(0xfffef7ff),
          cardColor: const Color(0xffF6F6F6),
          focusColor: const Color(0xfffef5ec),
          primaryColor: ColorManger.kMaterialWhiteColor,
          hintColor: Colors.black),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        cardColor: Colors.grey,
        focusColor: ColorManger.kMaterialBlackColor,
        primaryColor: ColorManger.kMaterialBlackColor,
        hintColor: ColorManger.kMaterialWhiteColor,
      ),
      home: const SplashView(),
    );
  }
}

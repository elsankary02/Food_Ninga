import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/home/pages/signup_page.dart';
import 'package:food_ninga/features/on_boarding/model/onboarding_list_model_.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: items.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    items[index].image,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    items[index].subTitel,
                    style: TextManger.textstyle22Bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    items[index].titel,
                    style: TextManger.textStyle12Book,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == items.length - 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ),
                );
              }
              pageController.animateToPage(1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
            child: Container(
              height: 57,
              width: 157,
              decoration: BoxDecoration(
                  color: ColorManger.kPrimaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'Next',
                  style: TextManger.textstyle14Bold.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

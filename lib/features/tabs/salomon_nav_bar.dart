import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/cart_tab/cart.dart';
import 'package:food_ninga/features/tabs/chat_tab/chat.dart';
import 'package:food_ninga/features/tabs/home_tab/home.dart';
import 'package:food_ninga/features/tabs/profile_tab/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomonNavBar extends StatefulWidget {
  const SalomonNavBar({super.key});

  @override
  State<SalomonNavBar> createState() => _SalomonNavBarState();
}

class _SalomonNavBarState extends State<SalomonNavBar> {
  int currentIndex = 0;

  List<Widget> tabs = [
    const Home(),
    const Profile(),
    const Cart(),
    const Chat(),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: tabs.elementAt(currentIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: SalomonBottomBar(
            margin: const EdgeInsets.all(10),
            itemPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            onTap: (int value) {
              setState(
                () {
                  currentIndex = value;
                },
              );
            },
            currentIndex: currentIndex,
            backgroundColor: theme.primaryColor,
            items: [
              SalomonBottomBarItem(
                selectedColor: ColorManger.kPrimaryColor,
                icon: SvgPicture.asset('assets/svg/Home.svg'),
                title: Text(
                  'Home',
                  style: TextManger.textStyle12Bold
                      .copyWith(color: theme.hintColor),
                ),
              ),
              SalomonBottomBarItem(
                selectedColor: ColorManger.kPrimaryColor,
                icon: SvgPicture.asset('assets/svg/Icon_Profile.svg'),
                title: Text(
                  'Profile',
                  style: TextManger.textStyle12Bold
                      .copyWith(color: theme.hintColor),
                ),
              ),
              SalomonBottomBarItem(
                selectedColor: ColorManger.kPrimaryColor,
                icon: SvgPicture.asset(
                  'assets/svg/Icon_Cart.svg',
                ),
                title: Text(
                  'Cart',
                  style: TextManger.textStyle12Bold
                      .copyWith(color: theme.hintColor),
                ),
              ),
              SalomonBottomBarItem(
                selectedColor: ColorManger.kPrimaryColor,
                icon: SvgPicture.asset('assets/svg/Chat.svg'),
                title: Text(
                  'Chat',
                  style: TextManger.textStyle12Bold
                      .copyWith(color: theme.hintColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

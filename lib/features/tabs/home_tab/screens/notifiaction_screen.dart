import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/widget/top_screen_appbar_widget.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/notification_card_widget.dart';

class NotifiactionScreen extends StatelessWidget {
  const NotifiactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopScreenAppBarWidget(
              titelAppBarPage: 'Notifiaction',
            ),
            NotifiactionCardWidget(
              image: 'assets/svg/Success_Icon.svg',
              titel: 'Your order has been taken by\n the driver',
              subTitel: 'Recently',
            ),
            SizedBox(
              height: 20,
            ),
            NotifiactionCardWidget(
              image: 'assets/svg/Top_Up_Icon.svg',
              titel: r'Topup for $100 was successful',
              subTitel: '10.00 Am',
            ),
            SizedBox(
              height: 20,
            ),
            NotifiactionCardWidget(
              image: 'assets/svg/Cancel_Icon.svg',
              titel: 'Your order has been canceled',
              subTitel: '22 Juny 2021',
            ),
          ],
        ),
      ),
    );
  }
}

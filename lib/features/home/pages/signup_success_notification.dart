import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/home/pages/widget/success_notification_widget.dart';
import 'package:food_ninga/features/tabs/salomon_nav_bar.dart';

class SignupSuccessNotificationPage extends StatelessWidget {
  const SignupSuccessNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SuccessNotificationWidget(),
            const SizedBox(
              height: 33,
            ),
            const Text(
              'Congrats!',
              style: TextManger.textstyle30Bold,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Your Profile Is Ready To Use',
              style: TextManger.textstyle22Bold,
            ),
            const SizedBox(
              height: 192,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SalomonNavBar(),
                ),
              ),
              child: const CustomButtonWidget(textButton: 'Try Order'),
            ),
          ],
        ),
      ),
    );
  }
}

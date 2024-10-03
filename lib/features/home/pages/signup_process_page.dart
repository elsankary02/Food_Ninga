import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/home/pages/payment_method_page.dart';
import 'package:food_ninga/features/home/pages/widget/text_field_login_widget.dart';
import 'package:food_ninga/features/home/pages/widget/top_appbar_widget.dart';

class SignupProcessPage extends StatelessWidget {
  const SignupProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const TopAppbarPopWidget(
              titel: 'Fill in your bio to get \nstarted',
              supTitel:
                  'This data will be displayed in your account \nprofile for security',
            ),
            const SizedBox(
              height: 20,
            ),
            const TextFieldLoginWidget(hintText: 'First Name'),
            const SizedBox(
              height: 20,
            ),
            const TextFieldLoginWidget(hintText: 'Last Name'),
            const SizedBox(
              height: 20,
            ),
            const TextFieldLoginWidget(hintText: 'Mobile Number'),
            const SizedBox(
              height: 220,
            ),
            Column(
              children: [
                GestureDetector(
                    onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PaymentMethodPage(),
                          ),
                        ),
                    child: const CustomButtonWidget(textButton: 'Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/home/pages/verification_code_page.dart';
import 'package:food_ninga/features/home/pages/widget/top_appbar_widget.dart';
import 'package:food_ninga/features/home/pages/widget/via_massage.dart';

class ViaMethodPage extends StatelessWidget {
  const ViaMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          const TopAppbarPopWidget(
              titel: 'Forgot password?',
              supTitel:
                  'Select which contact details should we \nuse to reset your password'),
          const SizedBox(
            height: 20,
          ),
          const ViaMassage(
            imageVia: 'assets/svg/Message.svg',
            textVia: 'Via sms:',
            subVia: '4235',
          ),
          const SizedBox(
            height: 20,
          ),
          const ViaMassage(
            imageVia: 'assets/svg/Email.svg',
            textVia: 'Via email:',
            subVia: '@gmail.com',
          ),
          const SizedBox(
            height: 269,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const VerificationCodePage(),
            )),
            child: const CustomButtonWidget(textButton: 'Next'),
          ),
        ],
      ),
    );
  }
}

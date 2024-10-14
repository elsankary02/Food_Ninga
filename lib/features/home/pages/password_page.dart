import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/home/pages/success_notification_page.dart';
import 'package:food_ninga/features/home/pages/widget/top_appbar_widget.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool isSelected = false;
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const TopAppbarPopWidget(
                titel: 'Reset your password \nhere',
                supTitel:
                    'Select which contact details should we \nuse to reset your password'),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: TextField(
                obscureText: isSelected ? false : true,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Icon(
                      isSelected ? Icons.visibility : Icons.visibility_off,
                      color: isSelected
                          ? ColorManger.kPrimaryColor
                          : const Color.fromARGB(255, 201, 195, 195),
                    ),
                  ),
                  hintText: 'New Password',
                  hintStyle: TextManger.textstyle14Regular,
                  filled: true,
                  fillColor: theme.primaryColor,
                  enabledBorder: outlineInputBorder(theme.primaryColor),
                  focusedBorder: outlineInputBorder(theme.primaryColor),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: TextField(
                obscureText: isPassword ? false : true,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isPassword = !isPassword;
                        },
                      );
                    },
                    child: Icon(
                      isPassword ? Icons.visibility : Icons.visibility_off,
                      color: isPassword
                          ? ColorManger.kPrimaryColor
                          : const Color.fromARGB(255, 201, 195, 195),
                    ),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextManger.textstyle14Regular,
                  filled: true,
                  fillColor: theme.primaryColor,
                  enabledBorder: outlineInputBorder(theme.primaryColor),
                  focusedBorder: outlineInputBorder(theme.primaryColor),
                ),
              ),
            ),
            const SizedBox(
              height: 290,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SuccessNotificationPage(),
                ),
              ),
              child: const UnconstrainedBox(
                child: CustomButtonWidget(textButton: 'Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder(Color theme) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(22),
    borderSide: BorderSide(
      color: theme,
    ),
  );
}

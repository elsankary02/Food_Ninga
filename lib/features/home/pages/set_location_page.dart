import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/home/pages/widget/top_appbar_widget.dart';
import 'package:food_ninga/features/tabs/salomon_nav_bar.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopAppbarPopWidget(
              titel: 'Set Your Location',
              supTitel:
                  'This data will be displayed in your account \nprofile for security',
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 147,
              width: 343,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svg/Pin Logo.svg'),
                        const SizedBox(
                          width: 14,
                        ),
                        const Text(
                          'Your Location',
                          style: TextManger.textStyle14Medium,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Container(
                    height: 57,
                    width: 322,
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Set Location',
                        style: TextManger.textstyle14Bold
                            .copyWith(color: theme.hintColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 340,
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/notifiaction_screen.dart';

class TextFieldSearchScreenWidget extends StatelessWidget {
  const TextFieldSearchScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31, right: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your \nFavorite Food',
                    style: TextManger.textstyle25Bold
                        .copyWith(color: theme.hintColor),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotifiactionScreen(),
                      ),
                    ),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: UnconstrainedBox(
                        child: SvgPicture.asset(
                            'assets/svg/Icon_Notifiaction.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                style: const TextStyle(color: ColorManger.kBrownColor),
                cursorColor: ColorManger.kBrownColor,
                decoration: InputDecoration(
                  hintText: 'What do you want to order?',
                  hintStyle: TextManger.textStyle12Medium.copyWith(
                      color: const Color.fromARGB(255, 247, 197, 166)),
                  prefixIcon: UnconstrainedBox(
                    child: SvgPicture.asset('assets/svg/Icon_Search.svg'),
                  ),
                  filled: true,
                  fillColor: theme.focusColor,
                  focusedBorder: outLineInputBorder(theme: theme.focusColor),
                  enabledBorder: outLineInputBorder(theme: theme.focusColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  OutlineInputBorder outLineInputBorder({required Color theme}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: theme,
      ),
    );
  }
}

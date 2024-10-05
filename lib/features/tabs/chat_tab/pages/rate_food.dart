import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/assets_manger.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/chat_tab/chat.dart';
import 'package:food_ninga/features/tabs/chat_tab/pages/rate_restaurant.dart';

class RateFood extends StatelessWidget {
  const RateFood({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Image.asset(
                  AssetsManger.kPattern,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180, left: 110),
                  child: Image.asset('assets/images/Rate_Food_Image.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              textAlign: TextAlign.center,
              'Thank You!\nOrder Completed',
              style: TextManger.textstyle25Bold,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              'Please rate your Food',
              style: TextManger.textstyle14Regular,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UnconstrainedBox(
                  child: SvgPicture.asset('assets/svg/Star.svg'),
                ),
                const SizedBox(
                  width: 23,
                ),
                UnconstrainedBox(
                  child: SvgPicture.asset('assets/svg/Star.svg'),
                ),
                const SizedBox(
                  width: 23,
                ),
                UnconstrainedBox(
                  child: SvgPicture.asset('assets/svg/Group_774.svg'),
                ),
                const SizedBox(
                  width: 23,
                ),
                UnconstrainedBox(
                  child: SvgPicture.asset('assets/svg/Star_oppacty.svg'),
                ),
                const SizedBox(
                  width: 23,
                ),
                UnconstrainedBox(
                  child: SvgPicture.asset('assets/svg/Star_oppacty.svg'),
                ),
              ],
            ),
            const SizedBox(
              height: 77,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Leave feedback',
                  hintStyle: TextManger.textstyle14Regular,
                  prefixIcon: UnconstrainedBox(
                    child: SvgPicture.asset('assets/svg/edit_Icon.svg'),
                  ),
                  filled: true,
                  fillColor: theme.primaryColor,
                  enabledBorder: outlineBorder(theme: theme.primaryColor),
                  focusedBorder: outlineBorder(theme: theme.primaryColor),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RateRestaurant(),
                      ),
                    ),
                    child: Container(
                      width: 233,
                      height: 57,
                      decoration: BoxDecoration(
                        color: ColorManger.kPrimaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextManger.textstyle14Bold
                              .copyWith(color: ColorManger.kMaterialWhiteColor),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Chat(),
                      ),
                    ),
                    child: Container(
                      width: 82,
                      height: 57,
                      decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Skip',
                          style: TextManger.textstyle14Bold
                              .copyWith(color: ColorManger.kPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder({required Color theme}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: theme,
      ),
    );
  }
}

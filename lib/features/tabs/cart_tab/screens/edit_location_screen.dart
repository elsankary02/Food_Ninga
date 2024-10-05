import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/core/utils/widget/top_screen_appbar_widget.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/set_location_screen.dart';

class EditLocationScreen extends StatelessWidget {
  const EditLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopScreenAppBarWidget(titelAppBarPage: 'Shipping'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 20, top: 19),
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: theme.primaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Order Location',
                          style: TextManger.textstyle14Regular,
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset(
                                  'assets/svg/Icon_Location.svg'),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '8502 Preston Rd. Inglewood,\n Maine 98380',
                              style: TextManger.textstyle15Medium
                                  .copyWith(color: theme.hintColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, top: 17),
                    width: double.infinity,
                    height: 141,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Deliver To',
                          style: TextManger.textstyle14Regular,
                        ),
                        const SizedBox(height: 14),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset(
                                  'assets/svg/Icon_Location.svg'),
                            ),
                            const SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '8502 Preston Rd. Inglewood,\n Maine 98380',
                                  style: TextManger.textstyle15Medium
                                      .copyWith(color: theme.hintColor),
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SetLocationScreen(),
                                    ),
                                  ),
                                  child: Text(
                                    'set location',
                                    style:
                                        TextManger.textstyle14Regular.copyWith(
                                      color: ColorManger.kPrimaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          ColorManger.kPrimaryColor,
                                      decorationThickness: 3,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

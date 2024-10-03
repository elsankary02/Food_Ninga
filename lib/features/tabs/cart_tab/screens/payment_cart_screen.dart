import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/core/utils/widget/top_screen_appbar_widget.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/edit_location_screen.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/edit_payments_screen.dart';

class PaymentCartScreen extends StatelessWidget {
  const PaymentCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopScreenAppBarWidget(
              titelAppBarPage: 'Confirm Order',
            ),
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
                      color: theme.primaryColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Deliver To',
                              style: TextManger.textstyle14Regular,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditLocationScreen(),
                                ),
                              ),
                              child: Text(
                                'Edit',
                                style: TextManger.textstyle14Regular.copyWith(
                                    color: ColorManger.kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 3,
                                    decorationColor: ColorManger.kPrimaryColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset(
                                  'assets/svg/Icon Location.svg'),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '4517 Washington Ave. Manchester,\n Kentucky 39495',
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
                    padding:
                        const EdgeInsets.only(left: 12, right: 20, top: 19),
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: theme.primaryColor),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Payment Method',
                              style: TextManger.textstyle14Regular,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditPaymentsScreen(),
                                ),
                              ),
                              child: Text(
                                'Edit',
                                style: TextManger.textstyle14Regular.copyWith(
                                    color: ColorManger.kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 3,
                                    decorationColor: ColorManger.kPrimaryColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset('assets/svg/paypal.svg'),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '2121 6352 8465 ****',
                              style: TextManger.textstyle14Regular
                                  .copyWith(color: theme.hintColor),
                            ),
                          ],
                        ),
                      ],
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
}

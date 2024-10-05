import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/home_tab_appbar.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/populer_restaurant_card_widget.dart';

class ExploreRestaurantScreen extends StatelessWidget {
  const ExploreRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTabAppBar(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  height: 44,
                  width: 112,
                  decoration: BoxDecoration(
                    color: theme.focusColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '>10 Km',
                        style: TextManger.textStyle12Medium.copyWith(
                          color: ColorManger.kBrownColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/svg/Icon_Close.svg'),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 44,
                  width: 92,
                  decoration: BoxDecoration(
                    color: theme.focusColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Soup',
                        style: TextManger.textStyle12Medium.copyWith(
                          color: ColorManger.kBrownColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/svg/Icon_Close.svg'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 31),
              child: Text(
                'Popular Restaurant',
                style: TextManger.textstyle15Bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: const [
                  PopulerRestaurantCardWidget(
                    imageCard: 'assets/images/ResturantVagan.png',
                    titelText: 'Vegan Resto',
                    supTitel: '8 Mins',
                    imageCard2: 'assets/images/Restaurant_Cheef.png',
                    titelText2: 'Vegan Resto',
                    supTitel2: '12 Mins',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PopulerRestaurantCardWidget(
                    imageCard2: 'assets/images/Restaurant_Cheef.png',
                    titelText2: 'Vegan Resto',
                    supTitel2: '12 Mins',
                    imageCard: 'assets/images/ResturantVagan.png',
                    titelText: 'Vegan Resto',
                    supTitel: '8 Mins',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PopulerRestaurantCardWidget(
                    imageCard: 'assets/images/ResturantVagan.png',
                    titelText: 'Vegan Resto',
                    supTitel: '8 Mins',
                    imageCard2: 'assets/images/Restaurant_Cheef.png',
                    titelText2: 'Vegan Resto',
                    supTitel2: '12 Mins',
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

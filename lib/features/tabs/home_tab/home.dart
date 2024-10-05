import 'package:flutter/material.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/appbar_home_screen.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/voucher_promo_screen.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/home_container_image.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/navigator_nearest_restaurant_widget.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/navigator_populer_menu_widget.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/populer_card_menu_widget.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/resturant_card_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const AppbarHomeScreen(),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const VoucherPromoScreen(),
              )),
              child: const HomeContainerImage(),
            ),
            const SizedBox(
              height: 25,
            ),
            const NavigatorNearestRestaurantWidget(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 184,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 25),
                scrollDirection: Axis.horizontal,
                children: const [
                  ResturantCardWidget(
                    imageCard: 'assets/images/ResturantVagan.png',
                    titelText: 'Vegan Resto',
                    supTitel: '12 Mins',
                  ),
                  ResturantCardWidget(
                    imageCard: 'assets/images/Restaurant_Cheef.png',
                    titelText: 'Vegan Resto',
                    supTitel: '8 Mins',
                  ),
                  ResturantCardWidget(
                    imageCard: 'assets/images/ResturantVagan.png',
                    titelText: 'Vegan Resto',
                    supTitel: '12 Mins',
                  ),
                  ResturantCardWidget(
                    imageCard: 'assets/images/Restaurant_Cheef.png',
                    titelText: 'Vegan Resto',
                    supTitel: '8 Mins',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NavigatorPopulerMenuWidget(),
            const SizedBox(
              height: 20,
            ),
            const PopularCardMenuWidget(
              imageCard: 'assets/images/Green_Noddle.png',
              titelText: 'Green Noddle',
              supTitel: 'Noodle Home',
              price: r'$15',
            ),
            const SizedBox(
              height: 20,
            ),
            const PopularCardMenuWidget(
              imageCard: 'assets/images/Fruit_Salad.png',
              titelText: 'Fruit Salad',
              supTitel: 'Wijie Resto',
              price: r'$5',
            ),
            const SizedBox(
              height: 20,
            ),
            const PopularCardMenuWidget(
              imageCard: 'assets/images/Herbal_Pancake.png',
              titelText: 'Herbal Pancake',
              supTitel: 'Warung Herbal',
              price: r'$7',
            ),
          ],
        ),
      ),
    );
  }
}

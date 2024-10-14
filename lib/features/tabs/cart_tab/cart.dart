import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/widgets/cart_menu_widget.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/widgets/checkout_order_widget.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/PatternTopRight.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Cart',
                      style: TextManger.textstyle25Bold
                          .copyWith(color: theme.hintColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: SizedBox(
                  height: 500,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: const [
                      CartMenuWidget(
                        image: 'assets/images/Photo_Soup.png',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CartMenuWidget(image: 'assets/images/Photo_Salad.png'),
                      SizedBox(
                        height: 20,
                      ),
                      CartMenuWidget(image: 'assets/images/Photo_Shawirma.png'),
                      SizedBox(
                        height: 20,
                      ),
                      CartMenuWidget(image: 'assets/images/Photo_Veg.png'),
                      SizedBox(
                        height: 20,
                      ),
                      CartMenuWidget(
                          image: 'assets/images/Photo_Menu_profile.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _displayButtomSheet(context),
              child: const CustomButtonWidget(textButton: r'Go to Checkout $'),
            ),
          ),
        ],
      ),
    );
  }
}

Future _displayButtomSheet(BuildContext context) {
  final style14Medium = TextManger.textStyle14Medium
      .copyWith(color: ColorManger.kMaterialWhiteColor);
  return showModalBottomSheet(
    backgroundColor: ColorManger.kPrimaryColor,
    isDismissible: false,
    context: context,
    builder: (context) => CheckoutOrder(style14Medium: style14Medium),
  );
}

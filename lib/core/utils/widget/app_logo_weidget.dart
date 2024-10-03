import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/assets_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AssetsManger.kPattern,
            fit: BoxFit.fill,
          ),
          Image.asset(
            height: 150,
            AssetsManger.kLogo,
          ),
          const Text(
              textAlign: TextAlign.center,
              'FoodNinja',
              style: TextManger.textstyle40Viga),
          const Text(
              textAlign: TextAlign.center,
              'Deliever Favorite Food',
              style: TextManger.textstyle14Bold),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class PopulerRestaurantCardWidget extends StatelessWidget {
  final String imageCard;
  final String titelText;
  final String supTitel;
  final String imageCard2;
  final String titelText2;
  final String supTitel2;
  const PopulerRestaurantCardWidget({
    super.key,
    required this.imageCard,
    required this.titelText,
    required this.supTitel,
    required this.imageCard2,
    required this.titelText2,
    required this.supTitel2,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 147,
              height: 184,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imageCard),
                  const SizedBox(
                    height: 17,
                  ),
                  Text(
                    titelText,
                    style: TextManger.textstyle15Bold
                        .copyWith(color: theme.hintColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    supTitel,
                    style: TextManger.textStyle13Book.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              width: 147,
              height: 184,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imageCard2),
                  const SizedBox(
                    height: 17,
                  ),
                  Text(
                    titelText2,
                    style: TextManger.textstyle15Bold
                        .copyWith(color: theme.hintColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    supTitel2,
                    style: TextManger.textStyle13Book.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

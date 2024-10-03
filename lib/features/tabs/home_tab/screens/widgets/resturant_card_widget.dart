import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class ResturantCardWidget extends StatelessWidget {
  final String imageCard;
  final String titelText;
  final String supTitel;
  const ResturantCardWidget({
    super.key,
    required this.imageCard,
    required this.titelText,
    required this.supTitel,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 184,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: theme.primaryColor,
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
            style: TextManger.textstyle15Bold.copyWith(color: theme.hintColor),
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
    );
  }
}

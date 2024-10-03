import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/on_boarding/model/onboarding_list_model_.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PageView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            items[index].image,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            textAlign: TextAlign.center,
            items[index].subTitel,
            style: TextManger.textstyle22Bold.copyWith(color: theme.hintColor),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            items[index].titel,
            style: TextManger.textstyle17Book.copyWith(color: theme.hintColor),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

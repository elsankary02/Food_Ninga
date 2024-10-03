import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class CountainerSocialWidget extends StatelessWidget {
  const CountainerSocialWidget({
    super.key,
    required this.textSocial,
    required this.imageSocial,
  });
  final String textSocial;
  final String imageSocial;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 57,
      width: 152,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageSocial),
          const SizedBox(
            width: 13,
          ),
          Text(
            textSocial,
            style:
                TextManger.textStyle14Medium.copyWith(color: theme.hintColor),
          ),
        ],
      ),
    );
  }
}

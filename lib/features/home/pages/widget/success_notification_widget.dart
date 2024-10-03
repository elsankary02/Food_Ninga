import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/assets_manger.dart';

class SuccessNotificationWidget extends StatelessWidget {
  const SuccessNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsManger.kPattern,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 125, top: 250),
          child: Column(
            children: [
              SvgPicture.asset('assets/svg/Illustration.svg'),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class ViaMassage extends StatelessWidget {
  final String imageVia;
  final String textVia;
  final String subVia;
  const ViaMassage(
      {super.key,
      required this.imageVia,
      required this.textVia,
      required this.subVia});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 105,
      width: 347,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: SvgPicture.asset(imageVia),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textVia,
                style: TextManger.textstyle16Book.copyWith(
                  color: const Color(0xff828282),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/svg/Frame 2.svg'),
                  const SizedBox(
                    width: 14,
                  ),
                  SvgPicture.asset('assets/svg/Frame 2.svg'),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    subVia,
                    style: TextManger.textstyle16Book.copyWith(
                      color: theme.hintColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class TopAppbarPopWidget extends StatelessWidget {
  const TopAppbarPopWidget(
      {super.key, required this.titel, required this.supTitel});

  final String titel;
  final String supTitel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 38,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                titel,
                style: TextManger.textstyle25Bold,
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                supTitel,
                style: TextManger.textStyle12Book,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

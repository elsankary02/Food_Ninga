import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class TopScreenAppBarWidget extends StatelessWidget {
  final String titelAppBarPage;
  const TopScreenAppBarWidget({super.key, required this.titelAppBarPage});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 38,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                titelAppBarPage,
                style:
                    TextManger.textstyle25Bold.copyWith(color: theme.hintColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

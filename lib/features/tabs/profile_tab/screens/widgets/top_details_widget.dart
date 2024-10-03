import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class TopDetailsWidget extends StatefulWidget {
  const TopDetailsWidget({
    super.key,
  });

  @override
  State<TopDetailsWidget> createState() => _TopDetailsWidgetState();
}

class _TopDetailsWidgetState extends State<TopDetailsWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 76,
          height: 34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: const Color(0xffe8f9f1),
          ),
          child: Center(
            child: Text(
              'Popular',
              style: TextManger.textStyle12Medium
                  .copyWith(color: ColorManger.kPrimaryColor),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: const Color(0xffe8f9f1),
                borderRadius: BorderRadius.circular(18.5),
              ),
              child: Center(
                child: SvgPicture.asset('assets/svg/Shape.svg'),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: const Color(0xfffde8ed),
                  borderRadius: BorderRadius.circular(18.5),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: isSelected
                        ? const Color.fromARGB(255, 204, 202, 202)
                        : Colors.red,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

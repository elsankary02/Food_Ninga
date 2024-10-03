import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class MassageProfileWidget extends StatefulWidget {
  final String image;
  final String titel;

  const MassageProfileWidget({
    super.key,
    required this.image,
    required this.titel,
  });

  @override
  State<MassageProfileWidget> createState() => _MassageProfileWidgetState();
}

class _MassageProfileWidgetState extends State<MassageProfileWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 81,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: theme.primaryColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              widget.image,
              width: 64,
              height: 64,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.titel,
                      style: TextManger.textstyle15Medium
                          .copyWith(color: theme.hintColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
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
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Display Now !',
                style: TextManger.textstyle14Regular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

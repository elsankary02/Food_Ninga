import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class CheckCirclerSharp extends StatefulWidget {
  const CheckCirclerSharp({super.key, required this.textCheck});
  final String textCheck;

  @override
  State<CheckCirclerSharp> createState() => _CheckCirclerSharpState();
}

class _CheckCirclerSharpState extends State<CheckCirclerSharp> {
  bool isSleceted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSleceted = !isSleceted;
              });
            },
            child: Icon(
              Icons.check_circle_sharp,
              color: isSleceted
                  ? const Color(0xff53E88B)
                  : const Color.fromARGB(255, 201, 195, 195),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            widget.textCheck,
            style: TextManger.textStyle12Book.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

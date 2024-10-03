import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class TextFieldLoginWidget extends StatelessWidget {
  const TextFieldLoginWidget({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextManger.textstyle14Regular,
          contentPadding: const EdgeInsets.only(left: 28, top: 21, bottom: 22),
          filled: true,
          fillColor: theme.primaryColor,
          focusedBorder: borderTextField(theme.primaryColor),
          enabledBorder: borderTextField(theme.primaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder borderTextField(Color theme) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: theme,
    ),
    borderRadius: BorderRadius.circular(15),
  );
}

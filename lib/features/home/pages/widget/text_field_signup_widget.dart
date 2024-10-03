import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class TextFieldSignInWidget extends StatelessWidget {
  const TextFieldSignInWidget(
      {super.key, required this.labelText, required this.assetIcon});
  final String labelText;
  final String assetIcon;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: labelText,
          hintStyle: TextManger.textstyle14Regular,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
          prefixIcon: UnconstrainedBox(
            child: SvgPicture.asset(assetIcon, height: 24, width: 24),
          ),
          filled: true,
          fillColor: theme.primaryColor,
          enabledBorder: signupBorder(theme.primaryColor),
          focusedBorder: signupBorder(theme.primaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder signupBorder(Color theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: theme,
      ),
    );
  }
}

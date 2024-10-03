import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/assets_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/chat_tab/pages/call_close.dart';

class CallRanging extends StatefulWidget {
  const CallRanging({super.key});

  @override
  State<CallRanging> createState() => _CallRangingState();
}

class _CallRangingState extends State<CallRanging> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  AssetsManger.kPattern,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 120),
                  child: Image.asset(
                    width: 161,
                    height: 161,
                    'assets/images/order Image.png',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Courtney Henry',
              style: TextManger.textstyle25Bold,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Ringing . . .',
              style: TextManger.textstyle19Regular,
            ),
            const SizedBox(
              height: 177,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: SvgPicture.asset(isSelected
                      ? 'assets/svg/Mute Icon.svg'
                      : 'assets/svg/Speaker Icon.svg'),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CallClose(),
                    ),
                  ),
                  child: SvgPicture.asset('assets/svg/Close Icon2.svg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

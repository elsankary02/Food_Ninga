import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';

class ProfileScrollMode extends StatelessWidget {
  const ProfileScrollMode({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/Photo_Profile.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Container(
                  padding: EdgeInsets.zero,
                  height: 900,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: theme.scaffoldBackgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child:
                              SvgPicture.asset('assets/svg/Scrooll_Tools.svg'),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          height: 34,
                          width: 111,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(123, 255, 248, 232),
                            borderRadius: BorderRadius.circular(18.5),
                          ),
                          child: Center(
                            child: Text(
                              'Member Gold',
                              style: TextManger.textStyle12Medium
                                  .copyWith(color: const Color(0xffFEAD1D)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Anam Wusono',
                              style: TextManger.textstyle27Bold
                                  .copyWith(color: theme.hintColor),
                            ),
                            SvgPicture.asset('assets/svg/edit_Icon.svg'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

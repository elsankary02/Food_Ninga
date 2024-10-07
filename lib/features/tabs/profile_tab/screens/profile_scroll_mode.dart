import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/profile_tab/screens/widgets/card_profile.dart';

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
                  height: 1000,
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
                        ),
                        const Text(
                          'anamwp66@gmail.com',
                          style: TextManger.textstyle14Regular,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 16, top: 13, bottom: 8),
                          height: 64,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: theme.primaryColor,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/svg/Voucher_Icon.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'You Have 3 Voucher',
                                style: TextManger.textstyle15Medium,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Favorite',
                          style: TextManger.textstyle15Bold,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CardProfile(
                          image: 'assets/images/Photo_Soup.png',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CardProfile(
                            image: 'assets/images/Photo_Salad.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const CardProfile(
                            image: 'assets/images/Photo_Shawirma.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const CardProfile(image: 'assets/images/Photo_Veg.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const CardProfile(
                            image: 'assets/images/Photo_Menu_profile.png'),
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

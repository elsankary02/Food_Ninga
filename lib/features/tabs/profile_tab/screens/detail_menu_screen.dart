import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/profile_tab/screens/widgets/card_textimonials_widget.dart';
import 'package:food_ninga/features/tabs/profile_tab/screens/widgets/top_details_widget.dart';

class DetailMenuScreen extends StatelessWidget {
  const DetailMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Photo Menu.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 358),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.zero,
                          width: double.infinity,
                          height: 1000,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                            color: theme.scaffoldBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: SvgPicture.asset(
                                      'assets/svg/Scrooll Tools.svg'),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const TopDetailsWidget(),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Rainbow Sandwich \nSugarless',
                                  style: TextManger.textstyle27Bold,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svg/Icon Star.svg'),
                                        const SizedBox(width: 10),
                                        const Text('4,8 Rating',
                                            style:
                                                TextManger.textstyle14Regular),
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svg/shopping-bag 1.svg'),
                                        const SizedBox(width: 10),
                                        const Text(
                                          '2000+ Order',
                                          style: TextManger.textstyle14Regular,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Nulla occaecat velit laborum exercitation ullamco. Elit\n labore eu aute elit nostrud culpa velit excepteur deserunt\n sunt. Velit non est cillum consequat cupidatat ex Lorem\n laboris labore aliqua ad duis eu laborum.",
                                  style: TextManger.textStyle12Book,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '• Strowberry',
                                        style: TextManger.textStyle12Book,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '• Cream',
                                        style: TextManger.textStyle12Book,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '• wheat',
                                        style: TextManger.textStyle12Book,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  'Nulla occaecat velit laborum exercitation ullamco. Elit\n labore eu aute elit nostrud culpa velit excepteur deserunt\n sunt.',
                                  style: TextManger.textStyle12Book,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Testimonials',
                                  style: TextManger.textstyle15Bold,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const CardTextimonialsWidget(
                                  imageAssets:
                                      'assets/images/Photo Profile screen.png',
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const CardTextimonialsWidget(
                                  imageAssets:
                                      'assets/images/Photo Profile search.png',
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const CardTextimonialsWidget(
                                  imageAssets: 'assets/images/Yasser.png',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 750,
              ),
              child: Container(
                height: 60,
                width: 326,
                decoration: BoxDecoration(
                  color: ColorManger.kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'Add To Chart',
                    style: TextManger.textstyle15Bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/profile_tab/screens/widgets/card_textimonials_widget.dart';
import 'package:food_ninga/features/tabs/profile_tab/screens/widgets/populer_menu_profile_widget.dart';
import 'package:food_ninga/features/tabs/profile_tab/screens/widgets/top_details_widget.dart';

class DetailproductScreen extends StatefulWidget {
  const DetailproductScreen({super.key});

  @override
  State<DetailproductScreen> createState() => _DetailproductScreenState();
}

class _DetailproductScreenState extends State<DetailproductScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Photo Restaurant.png'),
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
                              'Wijie Bar and Resto',
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
                                        'assets/svg/Icon map-pin.svg'),
                                    const SizedBox(width: 10),
                                    const Text(
                                      '19 Km',
                                      style: TextManger.textstyle14Regular,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/Icon Star.svg'),
                                    const SizedBox(width: 10),
                                    const Text('4,8 Rating',
                                        style: TextManger.textstyle14Regular),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Most whole Alaskan Red King Crabs get broken down into\n legs, claws, and lump meat. We offer all of these options\n as well in our online shop, but there is nothing like getting\n the whole . . . .',
                              style: TextManger.textStyle12Book,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Popular Menu',
                                  style: TextManger.textstyle15Bold,
                                ),
                                Text(
                                  'ViewAll',
                                  style: TextManger.textStyle12Book.copyWith(
                                      color: ColorManger.kOrangeColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 171,
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image opacity meat.png',
                                    imageAssets: 'assets/images/image Meat.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'12 $',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image opacity pizza.png',
                                    imageAssets:
                                        'assets/images/image Pizza.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'16 $',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image opacity meat.png',
                                    imageAssets: 'assets/images/image Meat.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'12 $',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  PopulerMenuProfileWidget(
                                    blurImage:
                                        'assets/images/image opacity pizza.png',
                                    imageAssets:
                                        'assets/images/image Pizza.png',
                                    title: 'Spacy fresh crab',
                                    subTitle: r'16 $',
                                  ),
                                ],
                              ),
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
    );
  }
}

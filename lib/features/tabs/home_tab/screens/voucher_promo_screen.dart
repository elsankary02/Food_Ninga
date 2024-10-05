import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/widget/top_screen_appbar_widget.dart';
import 'package:food_ninga/features/tabs/home_tab/screens/widgets/card_order_voucher_widget.dart';

class VoucherPromoScreen extends StatelessWidget {
  const VoucherPromoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopScreenAppBarWidget(
              titelAppBarPage: 'Voucher Promo',
            ),
            CardOrdar(
              image: 'assets/images/Girl_Eat_Image.png',
              backgroundColor: ColorManger.kPrimaryColor,
              colorOrder: Color(0xff009C51),
              specialColor: ColorManger.kMaterialWhiteColor,
            ),
            SizedBox(
              height: 20,
            ),
            CardOrdar(
              image: 'assets/images/Image_Order.png',
              backgroundColor: Color(0xffE9F7BA),
              colorOrder: Color(0xff6B3A5B),
              specialColor: Color(0xff6B3A5B),
            ),
          ],
        ),
      ),
    );
  }
}

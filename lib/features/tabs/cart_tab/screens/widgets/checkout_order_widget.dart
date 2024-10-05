import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/payment_cart_screen.dart';

class CheckoutOrder extends StatelessWidget {
  const CheckoutOrder({super.key, required this.style14Medium});

  final TextStyle style14Medium;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 22, top: 20),
      height: 206,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/Buttom_Sheet_Pattern.png'),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total', style: style14Medium),
              Text(r'120 $', style: style14Medium),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Charge', style: style14Medium),
              Text(r'10 $', style: style14Medium),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount', style: style14Medium),
              Text(r'20 $', style: style14Medium),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextManger.textstyle19Bold
                    .copyWith(color: ColorManger.kMaterialWhiteColor),
              ),
              Text(
                r'150$',
                style: TextManger.textstyle19Bold
                    .copyWith(color: ColorManger.kMaterialWhiteColor),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PaymentCartScreen(),
              ),
            ),
            child: Container(
              width: 325,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorManger.kMaterialWhiteColor,
              ),
              child: Center(
                child: Text(
                  'Place My Order',
                  style: TextManger.textstyle14Bold
                      .copyWith(color: ColorManger.kPrimaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

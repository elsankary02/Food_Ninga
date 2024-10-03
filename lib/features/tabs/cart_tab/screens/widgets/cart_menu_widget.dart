import 'package:flutter/material.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/widgets/quantity_counter_widget.dart';

class CartMenuWidget extends StatefulWidget {
  final String image;
  const CartMenuWidget({super.key, required this.image});

  @override
  State<CartMenuWidget> createState() => _CartMenuWidgetState();
}

class _CartMenuWidgetState extends State<CartMenuWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      width: double.infinity,
      height: 103,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(widget.image),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Spacy fresh crab',
                  style: TextManger.textstyle15Medium
                      .copyWith(color: theme.hintColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        'Waroenk kita',
                        style: TextManger.textstyle14Regular,
                      ),
                    ),
                    QuantityCounterWidget(
                      onValueChanged: (value) {
                        setState(() {
                          quantity = value;
                        });
                      },
                    ),
                  ],
                ),
                Text(
                  '\$ $totalPrice',
                  style: TextManger.textstyle19Bold,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  int get totalPrice => 35 * quantity;
}

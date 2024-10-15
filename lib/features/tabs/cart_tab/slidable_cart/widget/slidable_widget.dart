import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_ninga/core/utils/color_manger.dart';
import 'package:food_ninga/core/utils/text_manger.dart';
import 'package:food_ninga/features/tabs/cart_tab/screens/widgets/quantity_counter_widget.dart';
import 'package:food_ninga/features/tabs/cart_tab/slidable_cart/model/slidable_model.dart';

enum Action { delete, archive }

class SlidableWidget extends StatefulWidget {
  const SlidableWidget({super.key});

  @override
  State<SlidableWidget> createState() => _SlidableWidgetState();
}

class _SlidableWidgetState extends State<SlidableWidget> {
  int quantity = 1;
  List<SlidableModel> addCart = items;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: SizedBox(
        height: 500,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: addCart.length,
          itemBuilder: (context, index) {
            final users = addCart[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Slidable(
                startActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: BorderRadius.circular(22),
                      onPressed: (context) {
                        return removeCard(index, Action.archive);
                      },
                      backgroundColor: Colors.blue[400]!,
                      icon: Icons.archive,
                      foregroundColor: Colors.white,
                    ),
                  ],
                ),
                endActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: BorderRadius.circular(22),
                      onPressed: (context) {
                        return removeCard(index, Action.delete);
                      },
                      backgroundColor: ColorManger.kGoldColor,
                      icon: Icons.delete,
                      foregroundColor: Colors.white,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  width: double.infinity,
                  height: 103,
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Image.asset(users.image),
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void removeCard(int index, Action action) {
    // ignore: unused_local_variable
    final users = addCart[index];

    setState(
      () {
        addCart.removeAt(index);
      },
    );
  }

  int get totalPrice => 35 * quantity;
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/core/utils/widget/custom_button_widget.dart';
import 'package:food_ninga/features/home/pages/upload_photo_page.dart';
import 'package:food_ninga/features/home/pages/widget/top_appbar_widget.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          const TopAppbarPopWidget(
            titel: 'Payment Method',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          const SizedBox(
            height: 47,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/visa.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/paypal.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/Payoneer.svg',
          ),
          const SizedBox(
            height: 190,
          ),
          GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UpLoadPhotoPage(),
                  )),
              child: const CustomButtonWidget(textButton: 'Next')),
        ],
      ),
    );
  }
}

class PaymentsContainer extends StatelessWidget {
  const PaymentsContainer({
    super.key,
    required this.imagePayment,
  });
  final String imagePayment;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 73,
      width: 335,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: SvgPicture.asset(imagePayment),
      ),
    );
  }
}

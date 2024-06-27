import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_integration/core/widgets/custom_button.dart';
import 'package:payment_integration/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/horizontal_divider.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/price_info.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/total_price.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Image.asset(
            "assets/images/basket_image.png",
          )),
          const SizedBox(
            height: 20,
          ),
          const PriceInfo(),
          const HorizontalDivider(),
          const TotalPrice(),
         const SizedBox(height: 16,),
          CustomButton(text: 'Complete Payment',onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentDetailsView(),));
          },)
        ],
      ),
    );
  }
}


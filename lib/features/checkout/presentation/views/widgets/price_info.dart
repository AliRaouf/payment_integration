import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/styles.dart';

class PriceInfo extends StatelessWidget {
  const PriceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Order Subtotal",style: TextStyles.lightBody18,), Text("\$42.97",style: TextStyles.lightBody18,)],
              ),const SizedBox(height: 3,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Discount",style: TextStyles.lightBody18,), Text("\$0",style: TextStyles.lightBody18,)],
              ),const SizedBox(height: 3,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Shipping",style: TextStyles.lightBody18,), Text("\$8",style: TextStyles.lightBody18,)],
              ),
            
            ],
          )
        ;
  }
}
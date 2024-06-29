import 'package:flutter/material.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/payment_method_button.dart';

class PaymentMethodList extends StatefulWidget {
  const PaymentMethodList({
    super.key,
    required this.paymentMethods,
  });

  final List<String> paymentMethods;

  @override
  State<PaymentMethodList> createState() => _PaymentMethodListState();
}

class _PaymentMethodListState extends State<PaymentMethodList> {
  int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.paymentMethods.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: GestureDetector(onTap: () {
            setState(() {
              activeIndex=index;
            });
          },
            child: PaymentMethodButton(isActive: index==activeIndex, image: widget.paymentMethods[index])),
        );
      },
    );
  }
}
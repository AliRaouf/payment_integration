import 'package:flutter/material.dart';
import 'package:payment_integration/core/widgets/custom_appbar.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/checkout_view_body.dart';

class CheckoutView extends StatelessWidget{
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: "Checkout",),
      body: CheckoutViewBody(),
    );
  }
}
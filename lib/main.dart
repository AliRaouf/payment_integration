import 'package:flutter/material.dart';
import 'package:payment_integration/features/checkout/presentation/views/checkout_view.dart';

void main() {
  runApp(const AppRoot());
}
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CheckoutView(),
    );
  }
}


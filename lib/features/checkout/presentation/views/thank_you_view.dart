import 'package:flutter/material.dart';
import 'package:payment_integration/core/widgets/custom_appbar.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: CustomAppbar(title: ''),
      body: ThankYouViewBody(),
    );
  }
}
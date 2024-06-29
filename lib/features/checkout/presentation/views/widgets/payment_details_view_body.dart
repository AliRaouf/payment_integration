import 'package:flutter/material.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/payment_method_list.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final List<String> paymentMethods = const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];

  final bool isActive = false;


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: PaymentMethodList(paymentMethods: paymentMethods),
          ),
        ),
        SliverToBoxAdapter(child: CustomCreditCard(formKey: widget.formKey, autovalidateMode:widget.autovalidateMode)),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment_integration/core/widgets/custom_appbar.dart';
import 'package:payment_integration/core/widgets/custom_button.dart';
import 'package:payment_integration/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_integration/features/checkout/presentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
    final GlobalKey<FormState> formKey = GlobalKey();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const CustomAppbar(title: "Payment Details"),
      body: PaymentDetailsViewBody(formKey: formKey, autovalidateMode: autovalidateMode,),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: CustomButton(text: "Pay", onPressed: (){
          if (formKey.currentState!.validate()){
            formKey.currentState!.save();
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ThankYouView(),));
          }else{
            autovalidateMode = AutovalidateMode.always;
          }
        }),
      ),
    );
  }
}
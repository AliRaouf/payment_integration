import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.text, required this.onPressed,
  });
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,style: TextStyles.button22,
      ),
      style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(
            Size(double.infinity, 80),
          ),
          backgroundColor:const WidgetStatePropertyAll(Color(0xff25be3e)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)))),
    );
  }
}

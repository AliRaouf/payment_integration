import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodButton extends StatelessWidget {
  const PaymentMethodButton({
    super.key,
    required this.isActive,
    required this.image,
  });

  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 300),
      height: 62,
      width: 124,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1.5,color: isActive? Color(0xff25be3e):Colors.grey),),
    child: Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(image,),
    )),
    );
  }
}

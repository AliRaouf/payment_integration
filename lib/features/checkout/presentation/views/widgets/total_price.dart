import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Total",style: TextStyles.body24,), Text("\$50.97",style: TextStyles.body24,)],
        );
  }
}

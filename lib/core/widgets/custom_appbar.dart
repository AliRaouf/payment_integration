import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_integration/core/utils/styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: SvgPicture.asset(
        'assets/images/arrow.svg',
      ), onPressed: () {
        Navigator.pop(context);
      }),
      title: Text(title,style: TextStyles.appbar25,textAlign: TextAlign.center,),
      centerTitle: true,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

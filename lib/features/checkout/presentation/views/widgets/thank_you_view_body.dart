import 'package:flutter/material.dart';
import 'package:payment_integration/core/utils/styles.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration:  BoxDecoration(color: Colors.grey[400]),
            child: Column(children: [
              const SizedBox(height: 66,),
              Text("Thank You",style: TextStyles.appbar25,),
              Text("Your Transaction Was Successful",style: TextStyles.lightBody20,),
            ],),),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * 0.25,
          left: -20,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * 0.25,
          right: -20,
          child: const CircleAvatar(
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * 0.25 + 10,
          left: 28,
          right: 28,
          child: const Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
        Positioned(
          top: -50,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[400],
            child:const CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xff34A853),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 60,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

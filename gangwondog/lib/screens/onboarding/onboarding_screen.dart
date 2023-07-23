import 'package:flutter/material.dart';
import 'package:gangwondog/screens/onboarding/pageOne.dart';
import 'package:gangwondog/screens/onboarding/pageThree.dart';
import 'package:gangwondog/screens/onboarding/pageTwo.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: const [
            OnBoardingPageOne(),
            OnBoardingPageTwo(),
            OnBoardingPageThree(),
          ],
        )
      ],
    );
  }
}

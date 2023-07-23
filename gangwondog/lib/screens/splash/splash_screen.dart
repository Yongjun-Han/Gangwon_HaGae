import 'package:flutter/material.dart';
import 'package:gangwondog/layouts/default_layout.dart';
import 'package:gangwondog/screens/onboarding/onboarding_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    waitFor();
    print("온보딩");
  }

  void waitFor() async {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        ),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        bgColor: Colors.blueAccent,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/logo/splash.png',
                width: MediaQuery.of(context).size.width / 3,
              ),
              const SizedBox(
                height: 16,
              ),
              LoadingAnimationWidget.twoRotatingArc(
                color: Colors.white,
                size: 32,
              )
            ],
          ),
        ));
  }
}

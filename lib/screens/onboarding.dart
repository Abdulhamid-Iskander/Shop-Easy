import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../constants/constants.dart';
import 'signup_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
      bodyTextStyle: TextStyle(fontSize: 16, color: AppColors.textSecondary),
      imagePadding: EdgeInsets.all(24),
      pageColor: AppColors.background,
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      titlePadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
    );

    return IntroductionScreen(
      globalBackgroundColor: AppColors.background,
      pages: [
        PageViewModel(
          title: "Discover Amazing Products",
          body: "Explore thousands of products in different categories",
          image: Image.asset(
            'assets/images/Online shopping-bro.png',
            height: 250,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Easy & Safe Payment",
          body: "Pay with your favorite payment method securely",
          image: Image.asset(
            'assets/images/Plain credit card-amico.png',
            height: 250,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fast Delivery",
          body: "Get your orders delivered to your doorstep quickly",
          image: Image.asset(
            'assets/images/Shopping bag-amico.png',
            height: 250,
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
        );
      },
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        activeSize: Size(22, 10),
        color: AppColors.textSecondary,
        activeColor: AppColors.primary,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      showNextButton: true,
      showSkipButton: true,
      skip: const Text('Skip', style: TextStyle(color: AppColors.primary)),
      showBackButton: true,
      showDoneButton: true,
      back: const Icon(Icons.arrow_back, color: AppColors.primary),
      next: const Icon(Icons.arrow_forward, color: AppColors.primary),
      done: const Text(
        'Get Started',
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary),
      ),
      skipOrBackFlex: 0,
      nextFlex: 0,
    );
  }
}

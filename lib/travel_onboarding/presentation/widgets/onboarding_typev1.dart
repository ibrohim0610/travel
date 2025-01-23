import 'package:flutter/material.dart';

class OnboardingPageTypeV1 extends StatelessWidget {
  const OnboardingPageTypeV1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          "asset/images/onboarding/onboarding_1.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black.withValues(alpha: 0.7), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to👋",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 48,
                ),
              ),
              Text(
                "AirTravel",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 64,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "The best furniture e-commerce app of the century for your daily needs!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 84,)
            ],
          ),
        ),
      ],
    );
  }
}
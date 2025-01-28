import 'package:flutter/material.dart';
import 'package:travel_login/travel_onboarding/presentation/widgets/onboarding_type2.dart';
import 'package:travel_login/travel_onboarding/presentation/widgets/onboarding_typev1.dart';
import 'package:travel_login/travel_onboarding/presentation/widgets/page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: PageView(
            children: [
              OnboardingPageTypeV1(),
              OnboardingPageTypeV2(),
            ],
          )

      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:travel_login/travel_onboarding/presentation/widgets/page_indicator.dart';


class OnboardingPageTypeV2 extends StatefulWidget {
  const OnboardingPageTypeV2({super.key});

  @override
  State<OnboardingPageTypeV2> createState() => _OnboardingPageTypeV2State();
}

class _OnboardingPageTypeV2State extends State<OnboardingPageTypeV2> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  final List<String> images = [
    "asset/images/onboarding/onboarding_2.png",
    "asset/images/onboarding/onboarding_3.png",
    "asset/images/onboarding/onboarding_4.png",
  ];

  final List<String> texts = [
    "We provide high quality products just for you",
    "Explore the best travel destinations with us",
    "Start your journey with just a click",
  ];

  void _onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Image.asset(
              images[index],
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            );
          },
        ),
        Container(
            width: double.infinity,
            height: 370,
            padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child:Column(
              children: [
                Text(
                  texts[currentIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                    bottom: 48,
                    left: 0,
                    right: 0,
                    child: Center(
                        child: AnimatedContainer(
                          child: Row(
                            children: [
                              currentIndex == 0
                                  ? PageIndicatorGreen()
                                  : PageIndicator(),
                              currentIndex == 1
                                  ? PageIndicatorGreen()
                                  : PageIndicator(),
                              currentIndex == 2
                                  ? PageIndicatorGreen()
                                  : PageIndicator()
                            ],
                          ),
                          width: 60,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          duration: Duration(microseconds: 30),

                        )


                    )
                )
              ],
            )

        ),
        Positioned(
          bottom: 48,
          left: 24,
          right: 24,
          child: ElevatedButton(
            onPressed: () {
              if (currentIndex < images.length - 1) {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {

                print("Onboarding finished");
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: Size(380, 58),
            ),
            child: Center(
              child: Text(
                currentIndex < images.length - 1 ? "Next" : "Finish",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



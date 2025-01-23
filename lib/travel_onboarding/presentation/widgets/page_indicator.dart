import 'package:flutter/material.dart';
class PageIndicator extends StatelessWidget {
  // final int currentIndex;
  // final int currentCount;
  const PageIndicator({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}

class PageIndicatorGreen extends StatelessWidget {
  const PageIndicatorGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 8,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}


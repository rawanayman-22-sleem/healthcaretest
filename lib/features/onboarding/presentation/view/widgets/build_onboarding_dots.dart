import 'package:flutter/material.dart';

import '../../../../../core/constants/color_helper.dart';
import '../../../data/onboarding_data.dart';


class BuildOnboardingDots extends StatelessWidget {
   BuildOnboardingDots({
    Key? key,
    required this.currentOnboarding ,
  }) : super(key: key);
  final int currentOnboarding ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        OnboardingData.PagesLottie.length, (index) => Container(
        height: 8,
        width: (currentOnboarding==index)?16:8,
        margin: EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
            color: (currentOnboarding==index)?ColorHelper.mainColor:ColorHelper.mainShadow,
            borderRadius: BorderRadius.circular(20)

        ),
      ),
      ),
    );
  }
}

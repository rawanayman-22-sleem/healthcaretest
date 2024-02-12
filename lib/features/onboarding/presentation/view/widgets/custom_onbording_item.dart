import 'package:flutter/material.dart';

import '../../../../../core/constants/constants_exports.dart';
import '../../../data/onboarding_data.dart';


class CustomOnboardingItem extends StatelessWidget {
  CustomOnboardingItem({
    Key? key,
    required this.onboardingItem,
  }) : super(key: key);

  final OnboardingModel onboardingItem;

  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;
    final double _widthScreen = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: _heightScreen * 0.1,
        ),
        SizedBox(
          height: _heightScreen * 0.4,
          width: _widthScreen,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: _heightScreen * 0.25,
                decoration: BoxDecoration(
                  color: ColorHelper.mainShadow,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: onboardingItem.percentageWidth * _widthScreen,
                child: Lottie.asset(
                  onboardingItem.image,
                ),
              ),

            ],
          ),
        ),
        SizedBox(
          height: _heightScreen * 0.06,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            onboardingItem.description,
            textAlign: TextAlign.center,
            style: TextStyleHelper.style14S,
          ),
        ),
      ],
    );
  }
}

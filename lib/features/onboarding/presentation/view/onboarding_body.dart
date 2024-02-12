import 'package:flutter/material.dart';
import 'package:healthcaretest/core/constants/routing_helper.dart';
import 'package:healthcaretest/features/onboarding/presentation/view/widgets/custom_onbording_item.dart';

import '../../../../core/constants/color_helper.dart';
import '../../../../core/constants/fixed_variables.dart';
import '../../../../core/constants/text_style_helper.dart';
import '../../../../core/core_exports.dart';
import '../../../../core/utils/custom_background_gradient.dart';
import '../../data/onboarding_data.dart';
import 'widgets/build_onboarding_dots.dart';


class OnboardingBody extends StatefulWidget {
   OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
   int _currentOnboarding = 0;
  PageController _onboardingController = PageController(initialPage: 0);
  
  @override
  void initState() {
    _onboardingController;
    super.initState();
  }
  @override
  void dispose() {
    _onboardingController.dispose();
    super.dispose();
  }

   final List<OnboardingModel> _listOnboardingData = OnboardingData.PagesLottie;
  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;
    final double _widthScreen =  MediaQuery.of(context).size.width;

    return Stack(
      children: [
        CustomBackgroundGradient(),
        Padding(
          padding:  EdgeInsets.all(
            FixedVariables.ScreenPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // skip text
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed:(){
                    RoutingHelper.navToUserType(context);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyleHelper.style14S.copyWith(color: ColorHelper.mainColor),
                  ),

                ),
              ),

              // onboarding pages
              Expanded(
                child: PageView.builder(
                    controller: _onboardingController,
                    itemCount: OnboardingData.PagesLottie.length,
                    onPageChanged: (index){
                      setState(() {
                        _currentOnboarding = index;
                      });
                    },
                    itemBuilder: (context,index){
                      return CustomOnboardingItem(onboardingItem:_listOnboardingData[index]);
                    }
                ),
              ),

              // onboarding dots
              BuildOnboardingDots(currentOnboarding: _currentOnboarding),
              SizedBox(
                height: _heightScreen*0.04,
              ),

              // next button
              CustomButton(
                onPressed: (){
                  _onboardingController.nextPage(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeOut,
                  );
                  (_currentOnboarding==_listOnboardingData.length-1)?RoutingHelper.navToUserType(context):null;
                },
                text: (_currentOnboarding==_listOnboardingData.length-1)?"Join":"Next",
              ),
            ],
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_login/src/constants/colors.dart';
import 'package:flutter_login/src/constants/image_string.dart';
import 'package:flutter_login/src/constants/text_string.dart';
import 'package:flutter_login/src/features/authentication/model/model_on_boarding.dart';
import 'package:flutter_login/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: onBoardingImage1,
          title: onBoardingTitle1,
          subTitle: onBoardingSubTitle1,
          counterText: onBoardingCounter1,
          height: size.height,
          bgColor: tonBoardingPage1Color,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: onBoardingImage2,
          title: onBoardingTitle2,
          subTitle: onBoardingSubTitle2,
          counterText: onBoardingCounter2,
          height: size.height,
          bgColor: tonBoardingPage2Color,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: onBoardingImage3,
          title: onBoardingTitle3,
          subTitle: onBoardingSubTitle3,
          counterText: onBoardingCounter3,
          height: size.height,
          bgColor: tonBoardingPage3Color,
        ),
      ),
    ];

    final controller = LiquidController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.black87, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
                onPressed: () {},
                child: const Text("skip" , style: TextStyle(color: Colors.grey)),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              count: 3,
              activeIndex: controller.currentPage,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/src/constants/colors.dart';
import 'package:flutter_login/src/constants/image_string.dart';
import 'package:flutter_login/src/constants/size.dart';
import 'package:flutter_login/src/constants/text_string.dart';
import 'package:flutter_login/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/state_manager.dart';
import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage(tSplashTopIcon),
                  fit:
                      BoxFit.contain, // Ensure the image fits within the bounds
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 100,
              left: splashController.animate.value ? tDefaultSize : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 25, // Adjust font size as needed
                          ),
                    ),
                    Text(
                      tAppTagLine,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 25, // Adjust font size as needed
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 230 : -40,
              left: -10,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: SizedBox(
                  width: 400, // Adjust width as needed
                  height: 400, // Adjust height as needed
                  child: Image(
                    image: AssetImage(tSplashImage),
                    fit: BoxFit
                        .contain, // Ensure the image fits within the bounds
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              right: splashController.animate.value ? tDefaultSize : -30,
              bottom: splashController.animate.value ? 100 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: tSplashContainerSize,
                  height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:converting_to_text/core/assets_manager/assets_image_manager.dart';
import 'package:converting_to_text/layers/data_layer/app_function/my_services.dart';
import 'package:converting_to_text/layers/presentation_layer/shared_widgets/colored_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Center(
                    child: Lottie.asset(AssetsImagesManager.onBoardingReady)),
                const Spacer(),
                 ColoredButton(buttonName: 'LET\'S GO' ,function: () =>
                 MyServices
                     .startHome(context),)
              ],
            ),
          );
        },
      ),
    );
  }
}



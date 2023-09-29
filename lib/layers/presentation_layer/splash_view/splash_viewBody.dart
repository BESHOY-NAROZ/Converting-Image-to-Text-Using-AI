import 'package:converting_to_text/core/assets_manager/assets_image_manager.dart';
import 'package:converting_to_text/layers/data_layer/bloc_manager/splash_bloc_cubit.dart';
import 'package:converting_to_text/layers/data_layer/bloc_manager/splash_bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create:(context1) {
        return SplashBlocCubit()..delaySplash(context);
      },
      child: BlocConsumer<SplashBlocCubit,SplashBlocStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Scaffold(
              body: Center(
                child: Lottie.asset(AssetsImagesManager.splashLoading),
              ));
        },
      ),
    );

  }

}

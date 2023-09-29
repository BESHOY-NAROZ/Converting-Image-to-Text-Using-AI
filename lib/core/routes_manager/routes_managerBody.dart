import 'package:converting_to_text/core/constants/strings_manager.dart';
import 'package:converting_to_text/layers/presentation_layer/home_view/home_viewBody.dart';
import 'package:converting_to_text/layers/presentation_layer/onBoarding_view/onBoarding_viewBody.dart';
import 'package:converting_to_text/layers/presentation_layer/result_view/result_viewBody.dart';
import 'package:converting_to_text/layers/presentation_layer/splash_view/splash_viewBody.dart';
import 'package:flutter/material.dart';


class RoutesManager{

  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String homeRoute = "/home";
  static const String resultRoute = "/result";

}



class RoutesGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
        case RoutesManager.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
        case RoutesManager.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
        case RoutesManager.resultRoute:
        return MaterialPageRoute(builder: (_) => const ResultView());

      default:
        return unDefinedRoute();
    }}

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title:  const Text(StringsManager.noRouteFound),
          ),
          body:  const Center(child: Text(StringsManager.noRouteFound)),
        ));
  }
}
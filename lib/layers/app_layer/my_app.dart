import 'package:converting_to_text/core/routes_manager/routes_managerBody.dart';
import 'package:converting_to_text/layers/data_layer/bloc_manager/splash_bloc_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';


class MyApp extends StatelessWidget {
    const MyApp({Key? key,}) : super(key: key);
    @override
  Widget build(BuildContext context) {
      return  BlocProvider(
        create:(context1) {
          return SplashBlocCubit();
        },
        child: GetMaterialApp(
          theme: ThemeData(
            fontFamily: 'Lobster'
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesGenerator.getRoute,
          initialRoute: RoutesManager.splashRoute,
        ),
      );
    }
}

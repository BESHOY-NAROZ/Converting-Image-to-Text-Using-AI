import 'dart:io';

import 'package:converting_to_text/core/routes_manager/routes_managerBody.dart';
import 'package:converting_to_text/layers/data_layer/models/ConvertingModel.dart';
import 'package:converting_to_text/layers/data_layer/networking/dio_network.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'splash_bloc_states.dart';

class SplashBlocCubit extends Cubit<SplashBlocStates> {
  SplashBlocCubit() : super(SplashInitialState());

  static SplashBlocCubit get(context) {
    return BlocProvider.of(context);
  }

  delaySplash(context) {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.pushReplacementNamed(context, RoutesManager.onBoardingRoute);
    });
  }

   ConvertingModel? convertingModel;
   List<String> allText=[];

  startConverting(File file) async {
    emit(ConvertingLoadingState());

      FormData formData =
          FormData.fromMap({'image': await MultipartFile.fromFile(file.path)});

      await DioNetwork.dioPostData(url: 'v1/imagetotext', data: formData).then(
        (value) {
          allText = [];
          for (var element in value.data) {
            convertingModel = ConvertingModel.fromJson(element);
            allText.add(convertingModel!.text!);
            emit(ConvertingCompleteState());
          }
          emit(ConvertingCompleteState());
        },
      );
      emit(ConvertingErrorState());

  }

}

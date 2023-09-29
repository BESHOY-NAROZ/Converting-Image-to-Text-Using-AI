import 'package:converting_to_text/layers/data_layer/app_function/my_services.dart';

import 'package:converting_to_text/layers/data_layer/bloc_manager/splash_bloc_cubit.dart';
import 'package:converting_to_text/layers/presentation_layer/shared_widgets/colored_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 4),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, //New
                            blurRadius: 25.0,
                            offset: Offset(0, -10))
                      ],
                    ),
                    width: 300,
                    height: 500,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: MyServices.file != null
                        ? Center(
                            child: Image(
                                image: MyServices.image!.image,
                            fit: BoxFit.fill,
                            height: double.infinity,
                            width: double.infinity,
                          ))
                        : const Center(
                            child: Text('Select '
                                'Image'),
                          ),
                  ),
                  const Spacer(),
                  ColoredButton(
                    buttonName: 'START',
                    function: () {
                      BlocProvider.of<SplashBlocCubit>(context)
                          .startConverting(MyServices.file!);
                      MyServices.goToResult(context);

                    },
                  )
                ],
              ),
            ),
          ),


    );
  }
}

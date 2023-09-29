import 'package:converting_to_text/layers/data_layer/bloc_manager/splash_bloc_cubit.dart';
import 'package:converting_to_text/layers/data_layer/bloc_manager/splash_bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultView extends StatelessWidget {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashBlocCubit splashBlocCubit = BlocProvider.of<SplashBlocCubit>(context);
    return BlocBuilder<SplashBlocCubit, SplashBlocStates>(
        builder: (context, state) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0,left: 10,right: 10),
        child:
        splashBlocCubit.allText.isEmpty ? const Center(child: CircularProgressIndicator()):
        Column(
          children: [
            const Text('Your text is: ', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold)),
            SizedBox(height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: splashBlocCubit.allText.length,
 
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: SelectableText('${splashBlocCubit.allText[index]} ',
                      style: const TextStyle(
                        fontSize: 20,
                      fontWeight: FontWeight.bold
                      ,fontFamily: '',)
                      ,),
                  );
                },),
            ),
          ],
        ),
      ),
    );
        }
    );

  }
}

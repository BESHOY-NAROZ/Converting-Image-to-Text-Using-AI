import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
 final void Function() ? function;
 final  String ? buttonName;
   const ColoredButton({
    super.key,  this.function,this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 15,
      child: Container(
        decoration:  BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, //New
                blurRadius: 25.0,
                offset: Offset(0, -10))],
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            tileMode: TileMode.repeated,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.cyanAccent,
              Colors.yellow,
              Colors.greenAccent
            ],
          ),
        ),
        child: MaterialButton(
          onPressed: function,
          child:  Text(
            buttonName!,
            style: const TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50),
          )
        ),
      ),
    );
  }
}
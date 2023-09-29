import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:converting_to_text/core/routes_manager/routes_managerBody.dart';
import 'package:converting_to_text/layers/data_layer/networking/dio_network.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyServices {

 static startApp(){
    DioNetwork.defineDio();
  }
static Image ? image;
 static File? file;
 static startHome(context) async {
    ImagePicker picker = ImagePicker();
    picker.pickImage(source: ImageSource.gallery).then(
      (value) async {
        Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
        image = await convertFileToImage(File(value!.path));
        return file = File(value.path);
      },
    );
 }
 static Future<Image> convertFileToImage(File picture) async {
   List<int> imageBase64 = picture.readAsBytesSync();
   String imageAsString = base64Encode(imageBase64);
   Uint8List uint8list = base64.decode(imageAsString);
   Image image = Image.memory(uint8list);
   return image;
 }

 static goToResult(context){
   Navigator.pushReplacementNamed(context, RoutesManager.resultRoute);

 }

}

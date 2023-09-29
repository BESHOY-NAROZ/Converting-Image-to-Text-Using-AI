import 'BoundingBox.dart';

class ConvertingModel {
  ConvertingModel({
      this.text,
      this.boundingBox,});

  ConvertingModel.fromJson(dynamic json) {
    text = json['text'];
    boundingBox = json['bounding_box'] != null ? BoundingBox.fromJson(json['bounding_box']) : null;
  }
  String? text;
  BoundingBox? boundingBox;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    if (boundingBox != null) {
      map['bounding_box'] = boundingBox?.toJson();
    }
    return map;
  }

}
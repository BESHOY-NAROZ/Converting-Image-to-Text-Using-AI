class BoundingBox {
  BoundingBox({
      this.x1, 
      this.y1, 
      this.x2, 
      this.y2,});

  BoundingBox.fromJson(dynamic json) {
    x1 = json['x1'];
    y1 = json['y1'];
    x2 = json['x2'];
    y2 = json['y2'];
  }
  int? x1;
  int? y1;
  int? x2;
  int? y2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['x1'] = x1;
    map['y1'] = y1;
    map['x2'] = x2;
    map['y2'] = y2;
    return map;
  }

}
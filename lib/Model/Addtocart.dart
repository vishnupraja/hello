import 'dart:convert';
/// status : true
/// message : "Add to cart successfully"

Addtocart addtocartFromJson(String str) => Addtocart.fromJson(json.decode(str));
String addtocartToJson(Addtocart data) => json.encode(data.toJson());
class Addtocart {
  Addtocart({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  Addtocart.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
Addtocart copyWith({  bool? status,
  String? message,
}) => Addtocart(  status: status ?? _status,
  message: message ?? _message,
);
  bool? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}
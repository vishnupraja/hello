import 'dart:convert';
/// status : false
/// message : "Cart not found"

RemoveCart removeCartFromJson(String str) => RemoveCart.fromJson(json.decode(str));
String removeCartToJson(RemoveCart data) => json.encode(data.toJson());
class RemoveCart {
  RemoveCart({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  RemoveCart.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
RemoveCart copyWith({  bool? status,
  String? message,
}) => RemoveCart(  status: status ?? _status,
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
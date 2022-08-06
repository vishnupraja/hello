import 'dart:convert';
/// status : true
/// message : "wishlist successfully"

AddwishListModel addwishListModelFromJson(String str) => AddwishListModel.fromJson(json.decode(str));
String addwishListModelToJson(AddwishListModel data) => json.encode(data.toJson());
class AddwishListModel {
  AddwishListModel({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  AddwishListModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
AddwishListModel copyWith({  bool? status,
  String? message,
}) => AddwishListModel(  status: status ?? _status,
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
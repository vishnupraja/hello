import 'dart:convert';
/// status : true
/// message : "Add successfully"

GetAddModel getAddModelFromJson(String str) => GetAddModel.fromJson(json.decode(str));
String getAddModelToJson(GetAddModel data) => json.encode(data.toJson());
class GetAddModel {
  GetAddModel({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  GetAddModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
GetAddModel copyWith({  bool? status,
  String? message,
}) => GetAddModel(  status: status ?? _status,
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
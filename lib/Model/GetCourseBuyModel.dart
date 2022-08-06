import 'dart:convert';
/// status : true
/// message : "Add successfully"

GetCourseBuyModel getCourseBuyModelFromJson(String str) => GetCourseBuyModel.fromJson(json.decode(str));
String getCourseBuyModelToJson(GetCourseBuyModel data) => json.encode(data.toJson());
class GetCourseBuyModel {
  GetCourseBuyModel({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  GetCourseBuyModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
GetCourseBuyModel copyWith({  bool? status,
  String? message,
}) => GetCourseBuyModel(  status: status ?? _status,
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
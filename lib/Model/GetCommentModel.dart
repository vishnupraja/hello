import 'dart:convert';
/// status : true
/// message : "Add successfully"

GetCommentModel getCommentModelFromJson(String str) => GetCommentModel.fromJson(json.decode(str));
String getCommentModelToJson(GetCommentModel data) => json.encode(data.toJson());
class GetCommentModel {
  GetCommentModel({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  GetCommentModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
GetCommentModel copyWith({  bool? status,
  String? message,
}) => GetCommentModel(  status: status ?? _status,
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
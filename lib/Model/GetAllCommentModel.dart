import 'dart:convert';
/// status : true
/// message : "List"
/// data : [{"username":"admin","id":"1","post_id":"1","user_id":"1","comment":"Nice","title":"books ","created_at":"2022-04-25 12:04:28"}]

GetAllCommentModel getAllCommentModelFromJson(String str) => GetAllCommentModel.fromJson(json.decode(str));
String getAllCommentModelToJson(GetAllCommentModel data) => json.encode(data.toJson());
class GetAllCommentModel {
  GetAllCommentModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetAllCommentModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Data>? _data;
GetAllCommentModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetAllCommentModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// username : "admin"
/// id : "1"
/// post_id : "1"
/// user_id : "1"
/// comment : "Nice"
/// title : "books "
/// created_at : "2022-04-25 12:04:28"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? username, 
      String? id, 
      String? postId, 
      String? userId, 
      String? comment, 
      String? title, 
      String? createdAt,}){
    _username = username;
    _id = id;
    _postId = postId;
    _userId = userId;
    _comment = comment;
    _title = title;
    _createdAt = createdAt;
}

  Data.fromJson(dynamic json) {
    _username = json['username'];
    _id = json['id'];
    _postId = json['post_id'];
    _userId = json['user_id'];
    _comment = json['comment'];
    _title = json['title'];
    _createdAt = json['created_at'];
  }
  String? _username;
  String? _id;
  String? _postId;
  String? _userId;
  String? _comment;
  String? _title;
  String? _createdAt;
Data copyWith({  String? username,
  String? id,
  String? postId,
  String? userId,
  String? comment,
  String? title,
  String? createdAt,
}) => Data(  username: username ?? _username,
  id: id ?? _id,
  postId: postId ?? _postId,
  userId: userId ?? _userId,
  comment: comment ?? _comment,
  title: title ?? _title,
  createdAt: createdAt ?? _createdAt,
);
  String? get username => _username;
  String? get id => _id;
  String? get postId => _postId;
  String? get userId => _userId;
  String? get comment => _comment;
  String? get title => _title;
  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['id'] = _id;
    map['post_id'] = _postId;
    map['user_id'] = _userId;
    map['comment'] = _comment;
    map['title'] = _title;
    map['created_at'] = _createdAt;
    return map;
  }

}
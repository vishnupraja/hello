import 'dart:convert';
/// status : true
/// message : "Lesson List"
/// data : [{"id":"1","title":"hghgh","course_id":"1","status":"Active","sort_order":"11","created_at":null,"updated_at":"2022-04-18 11:18:01"}]

GetLessonModel getLessonModelFromJson(String str) => GetLessonModel.fromJson(json.decode(str));
String getLessonModelToJson(GetLessonModel data) => json.encode(data.toJson());
class GetLessonModel {
  GetLessonModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetLessonModel.fromJson(dynamic json) {
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
GetLessonModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetLessonModel(  status: status ?? _status,
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

/// id : "1"
/// title : "hghgh"
/// course_id : "1"
/// status : "Active"
/// sort_order : "11"
/// created_at : null
/// updated_at : "2022-04-18 11:18:01"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? courseId, 
      String? status, 
      String? sortOrder, 
      dynamic createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _courseId = courseId;
    _status = status;
    _sortOrder = sortOrder;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _courseId = json['course_id'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _title;
  String? _courseId;
  String? _status;
  String? _sortOrder;
  dynamic _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? title,
  String? courseId,
  String? status,
  String? sortOrder,
  dynamic createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  courseId: courseId ?? _courseId,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get title => _title;
  String? get courseId => _courseId;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  dynamic get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['course_id'] = _courseId;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
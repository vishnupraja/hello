import 'dart:convert';
/// status : true
/// message : "Quizes List"
/// data : [{"id":"1","category_id":"1","title":"Basic social media","description":null,"pass_percentage":"75.00","status":"Active","sort_order":"1","created_by":"1","created_at":"2022-03-12 09:39:11","updated_at":"2022-03-12 09:39:11"}]

GetAllQuizModel getAllQuizModelFromJson(String str) => GetAllQuizModel.fromJson(json.decode(str));
String getAllQuizModelToJson(GetAllQuizModel data) => json.encode(data.toJson());
class GetAllQuizModel {
  GetAllQuizModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetAllQuizModel.fromJson(dynamic json) {
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
GetAllQuizModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetAllQuizModel(  status: status ?? _status,
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
/// category_id : "1"
/// title : "Basic social media"
/// description : null
/// pass_percentage : "75.00"
/// status : "Active"
/// sort_order : "1"
/// created_by : "1"
/// created_at : "2022-03-12 09:39:11"
/// updated_at : "2022-03-12 09:39:11"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? categoryId, 
      String? title, 
      dynamic description, 
      String? passPercentage, 
      String? status, 
      String? sortOrder, 
      String? createdBy, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _categoryId = categoryId;
    _title = title;
    _description = description;
    _passPercentage = passPercentage;
    _status = status;
    _sortOrder = sortOrder;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _categoryId = json['category_id'];
    _title = json['title'];
    _description = json['description'];
    _passPercentage = json['pass_percentage'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _categoryId;
  String? _title;
  dynamic _description;
  String? _passPercentage;
  String? _status;
  String? _sortOrder;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? categoryId,
  String? title,
  dynamic description,
  String? passPercentage,
  String? status,
  String? sortOrder,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  categoryId: categoryId ?? _categoryId,
  title: title ?? _title,
  description: description ?? _description,
  passPercentage: passPercentage ?? _passPercentage,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get categoryId => _categoryId;
  String? get title => _title;
  dynamic get description => _description;
  String? get passPercentage => _passPercentage;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['category_id'] = _categoryId;
    map['title'] = _title;
    map['description'] = _description;
    map['pass_percentage'] = _passPercentage;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
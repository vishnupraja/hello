import 'dart:convert';
/// status : true
/// message : "FAQ Data"
/// data : [{"id":"1","title":"What you are looking for","description":"asdfghjkl","category_id":"1","show_in_page":"Yes","status":"Active","sort_order":"1","created_by":"1","created_at":"2022-03-11 07:32:20","updated_at":"2022-03-11 07:32:20"}]

GetSingleFaqDetialModel getSingleFaqDetialModelFromJson(String str) => GetSingleFaqDetialModel.fromJson(json.decode(str));
String getSingleFaqDetialModelToJson(GetSingleFaqDetialModel data) => json.encode(data.toJson());
class GetSingleFaqDetialModel {
  GetSingleFaqDetialModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetSingleFaqDetialModel.fromJson(dynamic json) {
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
GetSingleFaqDetialModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetSingleFaqDetialModel(  status: status ?? _status,
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
/// title : "What you are looking for"
/// description : "asdfghjkl"
/// category_id : "1"
/// show_in_page : "Yes"
/// status : "Active"
/// sort_order : "1"
/// created_by : "1"
/// created_at : "2022-03-11 07:32:20"
/// updated_at : "2022-03-11 07:32:20"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? description, 
      String? categoryId, 
      String? showInPage, 
      String? status, 
      String? sortOrder, 
      String? createdBy, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _description = description;
    _categoryId = categoryId;
    _showInPage = showInPage;
    _status = status;
    _sortOrder = sortOrder;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _categoryId = json['category_id'];
    _showInPage = json['show_in_page'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _title;
  String? _description;
  String? _categoryId;
  String? _showInPage;
  String? _status;
  String? _sortOrder;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? title,
  String? description,
  String? categoryId,
  String? showInPage,
  String? status,
  String? sortOrder,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  description: description ?? _description,
  categoryId: categoryId ?? _categoryId,
  showInPage: showInPage ?? _showInPage,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get categoryId => _categoryId;
  String? get showInPage => _showInPage;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['category_id'] = _categoryId;
    map['show_in_page'] = _showInPage;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
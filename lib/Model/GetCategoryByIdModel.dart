import 'dart:convert';
/// status : true
/// message : "Category Data"
/// data : [{"id":"5","name":"IT Sector","parent_id":"1","slug":"it_sector","description":"A sector is an area of the economy in which businesses share the same or related business activity, product, or service","icon":"fa-list","thumbnail":"category-thumbnail.png","status":"Active","sort_order":"0","created_at":"2022-04-21 20:37:39","updated_at":"2022-04-21 20:37:39"}]
/// url : "https://alphawizztest.tk/E_Learning/api/uploads/"

GetCategoryByIdModel getCategoryByIdModelFromJson(String str) => GetCategoryByIdModel.fromJson(json.decode(str));
String getCategoryByIdModelToJson(GetCategoryByIdModel data) => json.encode(data.toJson());
class GetCategoryByIdModel {
  GetCategoryByIdModel({
      bool? status, 
      String? message, 
      List<Data>? data, 
      String? url,}){
    _status = status;
    _message = message;
    _data = data;
    _url = url;
}

  GetCategoryByIdModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _url = json['url'];
  }
  bool? _status;
  String? _message;
  List<Data>? _data;
  String? _url;
GetCategoryByIdModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
  String? url,
}) => GetCategoryByIdModel(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
  url: url ?? _url,
);
  bool? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['url'] = _url;
    return map;
  }

}

/// id : "5"
/// name : "IT Sector"
/// parent_id : "1"
/// slug : "it_sector"
/// description : "A sector is an area of the economy in which businesses share the same or related business activity, product, or service"
/// icon : "fa-list"
/// thumbnail : "category-thumbnail.png"
/// status : "Active"
/// sort_order : "0"
/// created_at : "2022-04-21 20:37:39"
/// updated_at : "2022-04-21 20:37:39"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? name, 
      String? parentId, 
      String? slug, 
      String? description, 
      String? icon, 
      String? thumbnail, 
      String? status, 
      String? sortOrder, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _parentId = parentId;
    _slug = slug;
    _description = description;
    _icon = icon;
    _thumbnail = thumbnail;
    _status = status;
    _sortOrder = sortOrder;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _parentId = json['parent_id'];
    _slug = json['slug'];
    _description = json['description'];
    _icon = json['icon'];
    _thumbnail = json['thumbnail'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _name;
  String? _parentId;
  String? _slug;
  String? _description;
  String? _icon;
  String? _thumbnail;
  String? _status;
  String? _sortOrder;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? name,
  String? parentId,
  String? slug,
  String? description,
  String? icon,
  String? thumbnail,
  String? status,
  String? sortOrder,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  parentId: parentId ?? _parentId,
  slug: slug ?? _slug,
  description: description ?? _description,
  icon: icon ?? _icon,
  thumbnail: thumbnail ?? _thumbnail,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get name => _name;
  String? get parentId => _parentId;
  String? get slug => _slug;
  String? get description => _description;
  String? get icon => _icon;
  String? get thumbnail => _thumbnail;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['parent_id'] = _parentId;
    map['slug'] = _slug;
    map['description'] = _description;
    map['icon'] = _icon;
    map['thumbnail'] = _thumbnail;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
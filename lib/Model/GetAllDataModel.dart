import 'dart:convert';
/// status : true
/// message : "Add Data"
/// data : [{"id":"9","user_id":"7","prod_img":"watch1.jpg","title":"0"},{"id":"14","user_id":"7","prod_img":"","title":"0"},{"id":"15","user_id":"7","prod_img":".png","title":"0"}]

GetAllDataModel getAllDataModelFromJson(String str) => GetAllDataModel.fromJson(json.decode(str));
String getAllDataModelToJson(GetAllDataModel data) => json.encode(data.toJson());
class GetAllDataModel {
  GetAllDataModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetAllDataModel.fromJson(dynamic json) {
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
GetAllDataModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetAllDataModel(  status: status ?? _status,
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

/// id : "9"
/// user_id : "7"
/// prod_img : "watch1.jpg"
/// title : "0"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? userId, 
      String? prodImg, 
      String? title,}){
    _id = id;
    _userId = userId;
    _prodImg = prodImg;
    _title = title;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _prodImg = json['prod_img'];
    _title = json['title'];
  }
  String? _id;
  String? _userId;
  String? _prodImg;
  String? _title;
Data copyWith({  String? id,
  String? userId,
  String? prodImg,
  String? title,
}) => Data(  id: id ?? _id,
  userId: userId ?? _userId,
  prodImg: prodImg ?? _prodImg,
  title: title ?? _title,
);
  String? get id => _id;
  String? get userId => _userId;
  String? get prodImg => _prodImg;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['prod_img'] = _prodImg;
    map['title'] = _title;
    return map;
  }

}
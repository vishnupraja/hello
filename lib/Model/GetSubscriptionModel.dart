import 'dart:convert';
/// status : true
/// message : "Subscription Plan Details"
/// data : [{"id":"2","user_id":"2","plan_id":"2","name":"Popular plan","price":"1999"}]

GetSubscriptionModel getSubscriptionModelFromJson(String str) => GetSubscriptionModel.fromJson(json.decode(str));
String getSubscriptionModelToJson(GetSubscriptionModel data) => json.encode(data.toJson());
class GetSubscriptionModel {
  GetSubscriptionModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetSubscriptionModel.fromJson(dynamic json) {
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
GetSubscriptionModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetSubscriptionModel(  status: status ?? _status,
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

/// id : "2"
/// user_id : "2"
/// plan_id : "2"
/// name : "Popular plan"
/// price : "1999"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? userId, 
      String? planId, 
      String? name, 
      String? price,}){
    _id = id;
    _userId = userId;
    _planId = planId;
    _name = name;
    _price = price;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _planId = json['plan_id'];
    _name = json['name'];
    _price = json['price'];
  }
  String? _id;
  String? _userId;
  String? _planId;
  String? _name;
  String? _price;
Data copyWith({  String? id,
  String? userId,
  String? planId,
  String? name,
  String? price,
}) => Data(  id: id ?? _id,
  userId: userId ?? _userId,
  planId: planId ?? _planId,
  name: name ?? _name,
  price: price ?? _price,
);
  String? get id => _id;
  String? get userId => _userId;
  String? get planId => _planId;
  String? get name => _name;
  String? get price => _price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['plan_id'] = _planId;
    map['name'] = _name;
    map['price'] = _price;
    return map;
  }

}
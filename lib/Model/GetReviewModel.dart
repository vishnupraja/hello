import 'dart:convert';
/// status : true
/// message : "Course List"
/// data : [{"id":"3","rating":"1","user_id":"1","reviewable_id":"1","reviewable_type":"Course","review_for":"Others","description":"Best book for learning","likes":"0","dislikes":"0","status":"Active","sort_order":"0","created_at":null,"updated_at":"2022-05-02 06:47:08"}]

GetReviewModel getReviewModelFromJson(String str) => GetReviewModel.fromJson(json.decode(str));
String getReviewModelToJson(GetReviewModel data) => json.encode(data.toJson());
class GetReviewModel {
  GetReviewModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetReviewModel.fromJson(dynamic json) {
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
GetReviewModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetReviewModel(  status: status ?? _status,
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

/// id : "3"
/// rating : "1"
/// user_id : "1"
/// reviewable_id : "1"
/// reviewable_type : "Course"
/// review_for : "Others"
/// description : "Best book for learning"
/// likes : "0"
/// dislikes : "0"
/// status : "Active"
/// sort_order : "0"
/// created_at : null
/// updated_at : "2022-05-02 06:47:08"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? rating, 
      String? userId, 
      String? reviewableId, 
      String? reviewableType, 
      String? reviewFor, 
      String? description, 
      String? likes, 
      String? dislikes, 
      String? status, 
      String? sortOrder, 
      dynamic createdAt, 
      String? updatedAt,}){
    _id = id;
    _rating = rating;
    _userId = userId;
    _reviewableId = reviewableId;
    _reviewableType = reviewableType;
    _reviewFor = reviewFor;
    _description = description;
    _likes = likes;
    _dislikes = dislikes;
    _status = status;
    _sortOrder = sortOrder;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _rating = json['rating'];
    _userId = json['user_id'];
    _reviewableId = json['reviewable_id'];
    _reviewableType = json['reviewable_type'];
    _reviewFor = json['review_for'];
    _description = json['description'];
    _likes = json['likes'];
    _dislikes = json['dislikes'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _rating;
  String? _userId;
  String? _reviewableId;
  String? _reviewableType;
  String? _reviewFor;
  String? _description;
  String? _likes;
  String? _dislikes;
  String? _status;
  String? _sortOrder;
  dynamic _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? rating,
  String? userId,
  String? reviewableId,
  String? reviewableType,
  String? reviewFor,
  String? description,
  String? likes,
  String? dislikes,
  String? status,
  String? sortOrder,
  dynamic createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  rating: rating ?? _rating,
  userId: userId ?? _userId,
  reviewableId: reviewableId ?? _reviewableId,
  reviewableType: reviewableType ?? _reviewableType,
  reviewFor: reviewFor ?? _reviewFor,
  description: description ?? _description,
  likes: likes ?? _likes,
  dislikes: dislikes ?? _dislikes,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get rating => _rating;
  String? get userId => _userId;
  String? get reviewableId => _reviewableId;
  String? get reviewableType => _reviewableType;
  String? get reviewFor => _reviewFor;
  String? get description => _description;
  String? get likes => _likes;
  String? get dislikes => _dislikes;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  dynamic get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['rating'] = _rating;
    map['user_id'] = _userId;
    map['reviewable_id'] = _reviewableId;
    map['reviewable_type'] = _reviewableType;
    map['review_for'] = _reviewFor;
    map['description'] = _description;
    map['likes'] = _likes;
    map['dislikes'] = _dislikes;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
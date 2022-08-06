import 'dart:convert';
/// status : true
/// message : "Cart Data"
/// data : [{"cart_id":"6","user_id":"15","quantity":"10","course_id":"12","id":null,"title":null,"slug":null,"short_description":null,"description":null,"category_id":null,"language_id":null,"price":null,"level":null,"duration":null,"thumbnail":null,"overview_provider":null,"overview_url":null,"is_top_course":null,"is_free_course":null,"meta_keywords":null,"meta_description":null,"status":null,"sort_order":null,"instructor_id":null,"sale_count":null,"rating_count":null,"enroll_count":null,"created_by":null,"created_at":null,"updated_at":null}]

GetCartModel getCartModelFromJson(String str) => GetCartModel.fromJson(json.decode(str));
String getCartModelToJson(GetCartModel data) => json.encode(data.toJson());
class GetCartModel {
  GetCartModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetCartModel.fromJson(dynamic json) {
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
GetCartModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetCartModel(  status: status ?? _status,
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

/// cart_id : "6"
/// user_id : "15"
/// quantity : "10"
/// course_id : "12"
/// id : null
/// title : null
/// slug : null
/// short_description : null
/// description : null
/// category_id : null
/// language_id : null
/// price : null
/// level : null
/// duration : null
/// thumbnail : null
/// overview_provider : null
/// overview_url : null
/// is_top_course : null
/// is_free_course : null
/// meta_keywords : null
/// meta_description : null
/// status : null
/// sort_order : null
/// instructor_id : null
/// sale_count : null
/// rating_count : null
/// enroll_count : null
/// created_by : null
/// created_at : null
/// updated_at : null

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? cartId, 
      String? userId, 
      String? quantity, 
      String? courseId, 
      dynamic id, 
      dynamic title, 
      dynamic slug, 
      dynamic shortDescription, 
      dynamic description, 
      dynamic categoryId, 
      dynamic languageId, 
      dynamic price, 
      dynamic level, 
      dynamic duration, 
      dynamic thumbnail, 
      dynamic overviewProvider, 
      dynamic overviewUrl, 
      dynamic isTopCourse, 
      dynamic isFreeCourse, 
      dynamic metaKeywords, 
      dynamic metaDescription, 
      dynamic status, 
      dynamic sortOrder, 
      dynamic instructorId, 
      dynamic saleCount, 
      dynamic ratingCount, 
      dynamic enrollCount, 
      dynamic createdBy, 
      dynamic createdAt, 
      dynamic updatedAt,}){
    _cartId = cartId;
    _userId = userId;
    _quantity = quantity;
    _courseId = courseId;
    _id = id;
    _title = title;
    _slug = slug;
    _shortDescription = shortDescription;
    _description = description;
    _categoryId = categoryId;
    _languageId = languageId;
    _price = price;
    _level = level;
    _duration = duration;
    _thumbnail = thumbnail;
    _overviewProvider = overviewProvider;
    _overviewUrl = overviewUrl;
    _isTopCourse = isTopCourse;
    _isFreeCourse = isFreeCourse;
    _metaKeywords = metaKeywords;
    _metaDescription = metaDescription;
    _status = status;
    _sortOrder = sortOrder;
    _instructorId = instructorId;
    _saleCount = saleCount;
    _ratingCount = ratingCount;
    _enrollCount = enrollCount;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _cartId = json['cart_id'];
    _userId = json['user_id'];
    _quantity = json['quantity'];
    _courseId = json['course_id'];
    _id = json['id'];
    _title = json['title'];
    _slug = json['slug'];
    _shortDescription = json['short_description'];
    _description = json['description'];
    _categoryId = json['category_id'];
    _languageId = json['language_id'];
    _price = json['price'];
    _level = json['level'];
    _duration = json['duration'];
    _thumbnail = json['thumbnail'];
    _overviewProvider = json['overview_provider'];
    _overviewUrl = json['overview_url'];
    _isTopCourse = json['is_top_course'];
    _isFreeCourse = json['is_free_course'];
    _metaKeywords = json['meta_keywords'];
    _metaDescription = json['meta_description'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _instructorId = json['instructor_id'];
    _saleCount = json['sale_count'];
    _ratingCount = json['rating_count'];
    _enrollCount = json['enroll_count'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _cartId;
  String? _userId;
  String? _quantity;
  String? _courseId;
  dynamic _id;
  dynamic _title;
  dynamic _slug;
  dynamic _shortDescription;
  dynamic _description;
  dynamic _categoryId;
  dynamic _languageId;
  dynamic _price;
  dynamic _level;
  dynamic _duration;
  dynamic _thumbnail;
  dynamic _overviewProvider;
  dynamic _overviewUrl;
  dynamic _isTopCourse;
  dynamic _isFreeCourse;
  dynamic _metaKeywords;
  dynamic _metaDescription;
  dynamic _status;
  dynamic _sortOrder;
  dynamic _instructorId;
  dynamic _saleCount;
  dynamic _ratingCount;
  dynamic _enrollCount;
  dynamic _createdBy;
  dynamic _createdAt;
  dynamic _updatedAt;
Data copyWith({  String? cartId,
  String? userId,
  String? quantity,
  String? courseId,
  dynamic id,
  dynamic title,
  dynamic slug,
  dynamic shortDescription,
  dynamic description,
  dynamic categoryId,
  dynamic languageId,
  dynamic price,
  dynamic level,
  dynamic duration,
  dynamic thumbnail,
  dynamic overviewProvider,
  dynamic overviewUrl,
  dynamic isTopCourse,
  dynamic isFreeCourse,
  dynamic metaKeywords,
  dynamic metaDescription,
  dynamic status,
  dynamic sortOrder,
  dynamic instructorId,
  dynamic saleCount,
  dynamic ratingCount,
  dynamic enrollCount,
  dynamic createdBy,
  dynamic createdAt,
  dynamic updatedAt,
}) => Data(  cartId: cartId ?? _cartId,
  userId: userId ?? _userId,
  quantity: quantity ?? _quantity,
  courseId: courseId ?? _courseId,
  id: id ?? _id,
  title: title ?? _title,
  slug: slug ?? _slug,
  shortDescription: shortDescription ?? _shortDescription,
  description: description ?? _description,
  categoryId: categoryId ?? _categoryId,
  languageId: languageId ?? _languageId,
  price: price ?? _price,
  level: level ?? _level,
  duration: duration ?? _duration,
  thumbnail: thumbnail ?? _thumbnail,
  overviewProvider: overviewProvider ?? _overviewProvider,
  overviewUrl: overviewUrl ?? _overviewUrl,
  isTopCourse: isTopCourse ?? _isTopCourse,
  isFreeCourse: isFreeCourse ?? _isFreeCourse,
  metaKeywords: metaKeywords ?? _metaKeywords,
  metaDescription: metaDescription ?? _metaDescription,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  instructorId: instructorId ?? _instructorId,
  saleCount: saleCount ?? _saleCount,
  ratingCount: ratingCount ?? _ratingCount,
  enrollCount: enrollCount ?? _enrollCount,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get cartId => _cartId;
  String? get userId => _userId;
  String? get quantity => _quantity;
  String? get courseId => _courseId;
  dynamic get id => _id;
  dynamic get title => _title;
  dynamic get slug => _slug;
  dynamic get shortDescription => _shortDescription;
  dynamic get description => _description;
  dynamic get categoryId => _categoryId;
  dynamic get languageId => _languageId;
  dynamic get price => _price;
  dynamic get level => _level;
  dynamic get duration => _duration;
  dynamic get thumbnail => _thumbnail;
  dynamic get overviewProvider => _overviewProvider;
  dynamic get overviewUrl => _overviewUrl;
  dynamic get isTopCourse => _isTopCourse;
  dynamic get isFreeCourse => _isFreeCourse;
  dynamic get metaKeywords => _metaKeywords;
  dynamic get metaDescription => _metaDescription;
  dynamic get status => _status;
  dynamic get sortOrder => _sortOrder;
  dynamic get instructorId => _instructorId;
  dynamic get saleCount => _saleCount;
  dynamic get ratingCount => _ratingCount;
  dynamic get enrollCount => _enrollCount;
  dynamic get createdBy => _createdBy;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cart_id'] = _cartId;
    map['user_id'] = _userId;
    map['quantity'] = _quantity;
    map['course_id'] = _courseId;
    map['id'] = _id;
    map['title'] = _title;
    map['slug'] = _slug;
    map['short_description'] = _shortDescription;
    map['description'] = _description;
    map['category_id'] = _categoryId;
    map['language_id'] = _languageId;
    map['price'] = _price;
    map['level'] = _level;
    map['duration'] = _duration;
    map['thumbnail'] = _thumbnail;
    map['overview_provider'] = _overviewProvider;
    map['overview_url'] = _overviewUrl;
    map['is_top_course'] = _isTopCourse;
    map['is_free_course'] = _isFreeCourse;
    map['meta_keywords'] = _metaKeywords;
    map['meta_description'] = _metaDescription;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['instructor_id'] = _instructorId;
    map['sale_count'] = _saleCount;
    map['rating_count'] = _ratingCount;
    map['enroll_count'] = _enrollCount;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
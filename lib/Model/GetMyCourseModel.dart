import 'dart:convert';
/// status : true
/// message : "My course data"
/// data : [{"id":"3","title":"Graphic designe","slug":"graphic-designe","short_description":"illustrator, photoshop, Coral draw","description":"","category_id":"1","language_id":"4","price":"0.0000","level":"Beginner","duration":"1 Week","thumbnail":"course-thumbnail.png","overview_provider":"Vimeo","overview_url":null,"is_top_course":"Yes","is_free_course":"Yes","meta_keywords":"Graphic design","meta_description":"","status":"Active","sort_order":"3","instructor_id":"2","sale_count":"0","rating_count":"0","enroll_count":"0","created_by":"1","created_at":"2022-03-12 07:22:31","updated_at":"2022-03-12 07:22:31"}]

GetMyCourseModel getMyCourseModelFromJson(String str) => GetMyCourseModel.fromJson(json.decode(str));
String getMyCourseModelToJson(GetMyCourseModel data) => json.encode(data.toJson());
class GetMyCourseModel {
  GetMyCourseModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetMyCourseModel.fromJson(dynamic json) {
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
GetMyCourseModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetMyCourseModel(  status: status ?? _status,
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
/// title : "Graphic designe"
/// slug : "graphic-designe"
/// short_description : "illustrator, photoshop, Coral draw"
/// description : ""
/// category_id : "1"
/// language_id : "4"
/// price : "0.0000"
/// level : "Beginner"
/// duration : "1 Week"
/// thumbnail : "course-thumbnail.png"
/// overview_provider : "Vimeo"
/// overview_url : null
/// is_top_course : "Yes"
/// is_free_course : "Yes"
/// meta_keywords : "Graphic design"
/// meta_description : ""
/// status : "Active"
/// sort_order : "3"
/// instructor_id : "2"
/// sale_count : "0"
/// rating_count : "0"
/// enroll_count : "0"
/// created_by : "1"
/// created_at : "2022-03-12 07:22:31"
/// updated_at : "2022-03-12 07:22:31"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? slug, 
      String? shortDescription, 
      String? description, 
      String? categoryId, 
      String? languageId, 
      String? price, 
      String? level, 
      String? duration, 
      String? thumbnail, 
      String? overviewProvider, 
      dynamic overviewUrl, 
      String? isTopCourse, 
      String? isFreeCourse, 
      String? metaKeywords, 
      String? metaDescription, 
      String? status, 
      String? sortOrder, 
      String? instructorId, 
      String? saleCount, 
      String? ratingCount, 
      String? enrollCount, 
      String? createdBy, 
      String? createdAt, 
      String? updatedAt,}){
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
  String? _id;
  String? _title;
  String? _slug;
  String? _shortDescription;
  String? _description;
  String? _categoryId;
  String? _languageId;
  String? _price;
  String? _level;
  String? _duration;
  String? _thumbnail;
  String? _overviewProvider;
  dynamic _overviewUrl;
  String? _isTopCourse;
  String? _isFreeCourse;
  String? _metaKeywords;
  String? _metaDescription;
  String? _status;
  String? _sortOrder;
  String? _instructorId;
  String? _saleCount;
  String? _ratingCount;
  String? _enrollCount;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? title,
  String? slug,
  String? shortDescription,
  String? description,
  String? categoryId,
  String? languageId,
  String? price,
  String? level,
  String? duration,
  String? thumbnail,
  String? overviewProvider,
  dynamic overviewUrl,
  String? isTopCourse,
  String? isFreeCourse,
  String? metaKeywords,
  String? metaDescription,
  String? status,
  String? sortOrder,
  String? instructorId,
  String? saleCount,
  String? ratingCount,
  String? enrollCount,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
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
  String? get id => _id;
  String? get title => _title;
  String? get slug => _slug;
  String? get shortDescription => _shortDescription;
  String? get description => _description;
  String? get categoryId => _categoryId;
  String? get languageId => _languageId;
  String? get price => _price;
  String? get level => _level;
  String? get duration => _duration;
  String? get thumbnail => _thumbnail;
  String? get overviewProvider => _overviewProvider;
  dynamic get overviewUrl => _overviewUrl;
  String? get isTopCourse => _isTopCourse;
  String? get isFreeCourse => _isFreeCourse;
  String? get metaKeywords => _metaKeywords;
  String? get metaDescription => _metaDescription;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get instructorId => _instructorId;
  String? get saleCount => _saleCount;
  String? get ratingCount => _ratingCount;
  String? get enrollCount => _enrollCount;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
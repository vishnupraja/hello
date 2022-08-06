import 'dart:convert';
/// status : true
/// message : "Course Data"
/// data : [{"id":"19","user_id":"","title":"Flutter","type":"1","slug":"flutter","short_description":"Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets. In addition to browsing widgets by category, you can also see all the widgets in the widget index","description":"&lt;p&gt;&lt;span xss=removed&gt;Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets. In addition to browsing widgets by category, you can also see all the widgets in the &lt;/span&gt;&lt;a href=&quot;https://docs.flutter.dev/reference/widgets&quot; xss=removed&gt;widget index&lt;/a&gt;&lt;br&gt;&lt;/p&gt;","category_id":"12","language_id":"1","price":"399.0000","level":"Beginner","duration":"1 Week","thumbnail":"70760bf1e88b184bb1bc.png","overview_provider":"Youtube","overview_url":"https://www.youtube.com/watch?v=g-0B_Vfc9qM","is_top_course":"Yes","is_free_course":"No","meta_keywords":"Flutter","meta_description":"Flutter","status":"Active","sort_order":"1","instructor_id":"29","sale_count":"0","rating_count":"0","enroll_count":"0","created_by":"1","created_at":"2022-04-28 12:48:31","updated_at":"2022-04-28 12:48:31"}]

GetSingleCourseModel getSingleCourseModelFromJson(String str) => GetSingleCourseModel.fromJson(json.decode(str));
String getSingleCourseModelToJson(GetSingleCourseModel data) => json.encode(data.toJson());
class GetSingleCourseModel {
  GetSingleCourseModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetSingleCourseModel.fromJson(dynamic json) {
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
GetSingleCourseModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetSingleCourseModel(  status: status ?? _status,
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

/// id : "19"
/// user_id : ""
/// title : "Flutter"
/// type : "1"
/// slug : "flutter"
/// short_description : "Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets. In addition to browsing widgets by category, you can also see all the widgets in the widget index"
/// description : "&lt;p&gt;&lt;span xss=removed&gt;Create beautiful apps faster with Flutter’s collection of visual, structural, platform, and interactive widgets. In addition to browsing widgets by category, you can also see all the widgets in the &lt;/span&gt;&lt;a href=&quot;https://docs.flutter.dev/reference/widgets&quot; xss=removed&gt;widget index&lt;/a&gt;&lt;br&gt;&lt;/p&gt;"
/// category_id : "12"
/// language_id : "1"
/// price : "399.0000"
/// level : "Beginner"
/// duration : "1 Week"
/// thumbnail : "70760bf1e88b184bb1bc.png"
/// overview_provider : "Youtube"
/// overview_url : "https://www.youtube.com/watch?v=g-0B_Vfc9qM"
/// is_top_course : "Yes"
/// is_free_course : "No"
/// meta_keywords : "Flutter"
/// meta_description : "Flutter"
/// status : "Active"
/// sort_order : "1"
/// instructor_id : "29"
/// sale_count : "0"
/// rating_count : "0"
/// enroll_count : "0"
/// created_by : "1"
/// created_at : "2022-04-28 12:48:31"
/// updated_at : "2022-04-28 12:48:31"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? userId, 
      String? title, 
      String? type, 
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
      String? overviewUrl, 
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
    _userId = userId;
    _title = title;
    _type = type;
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
    _userId = json['user_id'];
    _title = json['title'];
    _type = json['type'];
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
  String? _userId;
  String? _title;
  String? _type;
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
  String? _overviewUrl;
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
  String? userId,
  String? title,
  String? type,
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
  String? overviewUrl,
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
  userId: userId ?? _userId,
  title: title ?? _title,
  type: type ?? _type,
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
  String? get userId => _userId;
  String? get title => _title;
  String? get type => _type;
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
  String? get overviewUrl => _overviewUrl;
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
    map['user_id'] = _userId;
    map['title'] = _title;
    map['type'] = _type;
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
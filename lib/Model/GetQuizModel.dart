import 'dart:convert';
/// status : true
/// message : "Quizes List"
/// data : [{"id":"1","quiz_id":"1","title":"Can we create the social media accounts","description":null,"type":"MCQ","option_count":"4","option1":"yes","option2":"no","option3":"maybe","option4":"both","option5":"","option6":"","answers":"false,false,false,false","tags":null,"status":"Active","sort_order":"1","created_by":"1","created_at":"2022-03-12 09:38:21","updated_at":"2022-04-18 14:53:19"},{"id":"2","quiz_id":"1","title":"asdf","description":"asdfasf","type":"MCQ","option_count":"4","option1":"jkasdklf","option2":"asdf","option3":"asdfa","option4":"asdfasd","option5":"","option6":"","answers":"true,true,true,true","tags":null,"status":"Active","sort_order":"0","created_by":"1","created_at":"2022-04-18 20:39:54","updated_at":"2022-04-19 10:40:25"}]

GetQuizModel getQuizModelFromJson(String str) => GetQuizModel.fromJson(json.decode(str));
String getQuizModelToJson(GetQuizModel data) => json.encode(data.toJson());
class GetQuizModel {
  GetQuizModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetQuizModel.fromJson(dynamic json) {
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
GetQuizModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetQuizModel(  status: status ?? _status,
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
/// quiz_id : "1"
/// title : "Can we create the social media accounts"
/// description : null
/// type : "MCQ"
/// option_count : "4"
/// option1 : "yes"
/// option2 : "no"
/// option3 : "maybe"
/// option4 : "both"
/// option5 : ""
/// option6 : ""
/// answers : "false,false,false,false"
/// tags : null
/// status : "Active"
/// sort_order : "1"
/// created_by : "1"
/// created_at : "2022-03-12 09:38:21"
/// updated_at : "2022-04-18 14:53:19"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? quizId, 
      String? title, 
      dynamic description, 
      String? type, 
      String? optionCount, 
      String? option1, 
      String? option2, 
      String? option3, 
      String? option4, 
      String? option5, 
      String? option6, 
      String? answers, 
      dynamic tags, 
      String? status, 
      String? sortOrder, 
      String? createdBy, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _quizId = quizId;
    _title = title;
    _description = description;
    _type = type;
    _optionCount = optionCount;
    _option1 = option1;
    _option2 = option2;
    _option3 = option3;
    _option4 = option4;
    _option5 = option5;
    _option6 = option6;
    _answers = answers;
    _tags = tags;
    _status = status;
    _sortOrder = sortOrder;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _quizId = json['quiz_id'];
    _title = json['title'];
    _description = json['description'];
    _type = json['type'];
    _optionCount = json['option_count'];
    _option1 = json['option1'];
    _option2 = json['option2'];
    _option3 = json['option3'];
    _option4 = json['option4'];
    _option5 = json['option5'];
    _option6 = json['option6'];
    _answers = json['answers'];
    _tags = json['tags'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _quizId;
  String? _title;
  dynamic _description;
  String? _type;
  String? _optionCount;
  String? _option1;
  String? _option2;
  String? _option3;
  String? _option4;
  String? _option5;
  String? _option6;
  String? _answers;
  dynamic _tags;
  String? _status;
  String? _sortOrder;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? quizId,
  String? title,
  dynamic description,
  String? type,
  String? optionCount,
  String? option1,
  String? option2,
  String? option3,
  String? option4,
  String? option5,
  String? option6,
  String? answers,
  dynamic tags,
  String? status,
  String? sortOrder,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  quizId: quizId ?? _quizId,
  title: title ?? _title,
  description: description ?? _description,
  type: type ?? _type,
  optionCount: optionCount ?? _optionCount,
  option1: option1 ?? _option1,
  option2: option2 ?? _option2,
  option3: option3 ?? _option3,
  option4: option4 ?? _option4,
  option5: option5 ?? _option5,
  option6: option6 ?? _option6,
  answers: answers ?? _answers,
  tags: tags ?? _tags,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get quizId => _quizId;
  String? get title => _title;
  dynamic get description => _description;
  String? get type => _type;
  String? get optionCount => _optionCount;
  String? get option1 => _option1;
  String? get option2 => _option2;
  String? get option3 => _option3;
  String? get option4 => _option4;
  String? get option5 => _option5;
  String? get option6 => _option6;
  String? get answers => _answers;
  dynamic get tags => _tags;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['quiz_id'] = _quizId;
    map['title'] = _title;
    map['description'] = _description;
    map['type'] = _type;
    map['option_count'] = _optionCount;
    map['option1'] = _option1;
    map['option2'] = _option2;
    map['option3'] = _option3;
    map['option4'] = _option4;
    map['option5'] = _option5;
    map['option6'] = _option6;
    map['answers'] = _answers;
    map['tags'] = _tags;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
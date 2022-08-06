import 'dart:convert';
/// status : true
/// message : "Lesson Data"
/// data : [{"id":"1","title":"jfjghj","course_id":"2","section_id":"1","lesson_type":"Video","video_type":"Youtube","video_url":"youtube.com","video_url_720P":"youtube.com","video_url_480P":"youtube.com","video_url_360P":"youtube.com","subtitle_url":"youtube.com","duration":"00:00:00","attachment_type":null,"attachment":"","summary":"dvfdvdf","details":"&lt;p&gt;dfvdfvfdvv&lt;/p&gt;","thumbnail":"lesson-thumbnail.png","status":"Active","sort_order":"0","created_by":"1","created_at":"2022-04-18 16:49:01","updated_at":"2022-04-18 16:49:01"}]

GetSingleLessonModel getSingleLessonModelFromJson(String str) => GetSingleLessonModel.fromJson(json.decode(str));
String getSingleLessonModelToJson(GetSingleLessonModel data) => json.encode(data.toJson());
class GetSingleLessonModel {
  GetSingleLessonModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetSingleLessonModel.fromJson(dynamic json) {
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
GetSingleLessonModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetSingleLessonModel(  status: status ?? _status,
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
/// title : "jfjghj"
/// course_id : "2"
/// section_id : "1"
/// lesson_type : "Video"
/// video_type : "Youtube"
/// video_url : "youtube.com"
/// video_url_720P : "youtube.com"
/// video_url_480P : "youtube.com"
/// video_url_360P : "youtube.com"
/// subtitle_url : "youtube.com"
/// duration : "00:00:00"
/// attachment_type : null
/// attachment : ""
/// summary : "dvfdvdf"
/// details : "&lt;p&gt;dfvdfvfdvv&lt;/p&gt;"
/// thumbnail : "lesson-thumbnail.png"
/// status : "Active"
/// sort_order : "0"
/// created_by : "1"
/// created_at : "2022-04-18 16:49:01"
/// updated_at : "2022-04-18 16:49:01"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? title, 
      String? courseId, 
      String? sectionId, 
      String? lessonType, 
      String? videoType, 
      String? videoUrl, 
      String? videoUrl720P, 
      String? videoUrl480P, 
      String? videoUrl360P, 
      String? subtitleUrl, 
      String? duration, 
      dynamic attachmentType, 
      String? attachment, 
      String? summary, 
      String? details, 
      String? thumbnail, 
      String? status, 
      String? sortOrder, 
      String? createdBy, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _title = title;
    _courseId = courseId;
    _sectionId = sectionId;
    _lessonType = lessonType;
    _videoType = videoType;
    _videoUrl = videoUrl;
    _videoUrl720P = videoUrl720P;
    _videoUrl480P = videoUrl480P;
    _videoUrl360P = videoUrl360P;
    _subtitleUrl = subtitleUrl;
    _duration = duration;
    _attachmentType = attachmentType;
    _attachment = attachment;
    _summary = summary;
    _details = details;
    _thumbnail = thumbnail;
    _status = status;
    _sortOrder = sortOrder;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _courseId = json['course_id'];
    _sectionId = json['section_id'];
    _lessonType = json['lesson_type'];
    _videoType = json['video_type'];
    _videoUrl = json['video_url'];
    _videoUrl720P = json['video_url_720P'];
    _videoUrl480P = json['video_url_480P'];
    _videoUrl360P = json['video_url_360P'];
    _subtitleUrl = json['subtitle_url'];
    _duration = json['duration'];
    _attachmentType = json['attachment_type'];
    _attachment = json['attachment'];
    _summary = json['summary'];
    _details = json['details'];
    _thumbnail = json['thumbnail'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdBy = json['created_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _title;
  String? _courseId;
  String? _sectionId;
  String? _lessonType;
  String? _videoType;
  String? _videoUrl;
  String? _videoUrl720P;
  String? _videoUrl480P;
  String? _videoUrl360P;
  String? _subtitleUrl;
  String? _duration;
  dynamic _attachmentType;
  String? _attachment;
  String? _summary;
  String? _details;
  String? _thumbnail;
  String? _status;
  String? _sortOrder;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? title,
  String? courseId,
  String? sectionId,
  String? lessonType,
  String? videoType,
  String? videoUrl,
  String? videoUrl720P,
  String? videoUrl480P,
  String? videoUrl360P,
  String? subtitleUrl,
  String? duration,
  dynamic attachmentType,
  String? attachment,
  String? summary,
  String? details,
  String? thumbnail,
  String? status,
  String? sortOrder,
  String? createdBy,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  courseId: courseId ?? _courseId,
  sectionId: sectionId ?? _sectionId,
  lessonType: lessonType ?? _lessonType,
  videoType: videoType ?? _videoType,
  videoUrl: videoUrl ?? _videoUrl,
  videoUrl720P: videoUrl720P ?? _videoUrl720P,
  videoUrl480P: videoUrl480P ?? _videoUrl480P,
  videoUrl360P: videoUrl360P ?? _videoUrl360P,
  subtitleUrl: subtitleUrl ?? _subtitleUrl,
  duration: duration ?? _duration,
  attachmentType: attachmentType ?? _attachmentType,
  attachment: attachment ?? _attachment,
  summary: summary ?? _summary,
  details: details ?? _details,
  thumbnail: thumbnail ?? _thumbnail,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdBy: createdBy ?? _createdBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get title => _title;
  String? get courseId => _courseId;
  String? get sectionId => _sectionId;
  String? get lessonType => _lessonType;
  String? get videoType => _videoType;
  String? get videoUrl => _videoUrl;
  String? get videoUrl720P => _videoUrl720P;
  String? get videoUrl480P => _videoUrl480P;
  String? get videoUrl360P => _videoUrl360P;
  String? get subtitleUrl => _subtitleUrl;
  String? get duration => _duration;
  dynamic get attachmentType => _attachmentType;
  String? get attachment => _attachment;
  String? get summary => _summary;
  String? get details => _details;
  String? get thumbnail => _thumbnail;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['course_id'] = _courseId;
    map['section_id'] = _sectionId;
    map['lesson_type'] = _lessonType;
    map['video_type'] = _videoType;
    map['video_url'] = _videoUrl;
    map['video_url_720P'] = _videoUrl720P;
    map['video_url_480P'] = _videoUrl480P;
    map['video_url_360P'] = _videoUrl360P;
    map['subtitle_url'] = _subtitleUrl;
    map['duration'] = _duration;
    map['attachment_type'] = _attachmentType;
    map['attachment'] = _attachment;
    map['summary'] = _summary;
    map['details'] = _details;
    map['thumbnail'] = _thumbnail;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_by'] = _createdBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
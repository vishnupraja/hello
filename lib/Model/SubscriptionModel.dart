import 'dart:convert';
/// status : true
/// message : "Plan Added successfully"

SubscriptionModel subscriptionModelFromJson(String str) => SubscriptionModel.fromJson(json.decode(str));
String subscriptionModelToJson(SubscriptionModel data) => json.encode(data.toJson());
class SubscriptionModel {
  SubscriptionModel({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  SubscriptionModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
SubscriptionModel copyWith({  bool? status,
  String? message,
}) => SubscriptionModel(  status: status ?? _status,
  message: message ?? _message,
);
  bool? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}
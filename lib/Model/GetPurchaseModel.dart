import 'dart:convert';
/// status : true
/// message : "My Course data"
/// data : [{"id":"1","purchase_type":"Course","invoice_id":"67aae9","invoice_type":"Onetime","user_id":"3","currency":"USD","subtotal":"200.0000","discount_type":"Plain","discount_amount":"0.0000","tax_amount":"0.0000","payable_amount":"200.0000","course_id":"0","paid_amount":"200.0000","due_amount":"0.0000","due_paid":"200.0000","notes":null,"total_item":"1","pmethod_id":"3","payment_status":"Paid","repeat_pattern":"Monthly","repeat_time":null,"repeat_status":"Stop","created_by":"3","due_date":"2022-03-07 11:39:18","paid_date":"2022-03-07 11:39:24","is_return":"No","is_notify":"Yes","status":"Active","sort_order":"0","created_at":"2022-03-07 11:39:18","updated_at":"2022-03-07 11:39:24"}]

GetPurchaseModel getPurchaseModelFromJson(String str) => GetPurchaseModel.fromJson(json.decode(str));
String getPurchaseModelToJson(GetPurchaseModel data) => json.encode(data.toJson());
class GetPurchaseModel {
  GetPurchaseModel({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetPurchaseModel.fromJson(dynamic json) {
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
GetPurchaseModel copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => GetPurchaseModel(  status: status ?? _status,
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
/// purchase_type : "Course"
/// invoice_id : "67aae9"
/// invoice_type : "Onetime"
/// user_id : "3"
/// currency : "USD"
/// subtotal : "200.0000"
/// discount_type : "Plain"
/// discount_amount : "0.0000"
/// tax_amount : "0.0000"
/// payable_amount : "200.0000"
/// course_id : "0"
/// paid_amount : "200.0000"
/// due_amount : "0.0000"
/// due_paid : "200.0000"
/// notes : null
/// total_item : "1"
/// pmethod_id : "3"
/// payment_status : "Paid"
/// repeat_pattern : "Monthly"
/// repeat_time : null
/// repeat_status : "Stop"
/// created_by : "3"
/// due_date : "2022-03-07 11:39:18"
/// paid_date : "2022-03-07 11:39:24"
/// is_return : "No"
/// is_notify : "Yes"
/// status : "Active"
/// sort_order : "0"
/// created_at : "2022-03-07 11:39:18"
/// updated_at : "2022-03-07 11:39:24"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? purchaseType, 
      String? invoiceId, 
      String? invoiceType, 
      String? userId, 
      String? currency, 
      String? subtotal, 
      String? discountType, 
      String? discountAmount, 
      String? taxAmount, 
      String? payableAmount, 
      String? courseId, 
      String? paidAmount, 
      String? dueAmount, 
      String? duePaid, 
      dynamic notes, 
      String? totalItem, 
      String? pmethodId, 
      String? paymentStatus, 
      String? repeatPattern, 
      dynamic repeatTime, 
      String? repeatStatus, 
      String? createdBy, 
      String? dueDate, 
      String? paidDate, 
      String? isReturn, 
      String? isNotify, 
      String? status, 
      String? sortOrder, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _purchaseType = purchaseType;
    _invoiceId = invoiceId;
    _invoiceType = invoiceType;
    _userId = userId;
    _currency = currency;
    _subtotal = subtotal;
    _discountType = discountType;
    _discountAmount = discountAmount;
    _taxAmount = taxAmount;
    _payableAmount = payableAmount;
    _courseId = courseId;
    _paidAmount = paidAmount;
    _dueAmount = dueAmount;
    _duePaid = duePaid;
    _notes = notes;
    _totalItem = totalItem;
    _pmethodId = pmethodId;
    _paymentStatus = paymentStatus;
    _repeatPattern = repeatPattern;
    _repeatTime = repeatTime;
    _repeatStatus = repeatStatus;
    _createdBy = createdBy;
    _dueDate = dueDate;
    _paidDate = paidDate;
    _isReturn = isReturn;
    _isNotify = isNotify;
    _status = status;
    _sortOrder = sortOrder;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _purchaseType = json['purchase_type'];
    _invoiceId = json['invoice_id'];
    _invoiceType = json['invoice_type'];
    _userId = json['user_id'];
    _currency = json['currency'];
    _subtotal = json['subtotal'];
    _discountType = json['discount_type'];
    _discountAmount = json['discount_amount'];
    _taxAmount = json['tax_amount'];
    _payableAmount = json['payable_amount'];
    _courseId = json['course_id'];
    _paidAmount = json['paid_amount'];
    _dueAmount = json['due_amount'];
    _duePaid = json['due_paid'];
    _notes = json['notes'];
    _totalItem = json['total_item'];
    _pmethodId = json['pmethod_id'];
    _paymentStatus = json['payment_status'];
    _repeatPattern = json['repeat_pattern'];
    _repeatTime = json['repeat_time'];
    _repeatStatus = json['repeat_status'];
    _createdBy = json['created_by'];
    _dueDate = json['due_date'];
    _paidDate = json['paid_date'];
    _isReturn = json['is_return'];
    _isNotify = json['is_notify'];
    _status = json['status'];
    _sortOrder = json['sort_order'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _purchaseType;
  String? _invoiceId;
  String? _invoiceType;
  String? _userId;
  String? _currency;
  String? _subtotal;
  String? _discountType;
  String? _discountAmount;
  String? _taxAmount;
  String? _payableAmount;
  String? _courseId;
  String? _paidAmount;
  String? _dueAmount;
  String? _duePaid;
  dynamic _notes;
  String? _totalItem;
  String? _pmethodId;
  String? _paymentStatus;
  String? _repeatPattern;
  dynamic _repeatTime;
  String? _repeatStatus;
  String? _createdBy;
  String? _dueDate;
  String? _paidDate;
  String? _isReturn;
  String? _isNotify;
  String? _status;
  String? _sortOrder;
  String? _createdAt;
  String? _updatedAt;
Data copyWith({  String? id,
  String? purchaseType,
  String? invoiceId,
  String? invoiceType,
  String? userId,
  String? currency,
  String? subtotal,
  String? discountType,
  String? discountAmount,
  String? taxAmount,
  String? payableAmount,
  String? courseId,
  String? paidAmount,
  String? dueAmount,
  String? duePaid,
  dynamic notes,
  String? totalItem,
  String? pmethodId,
  String? paymentStatus,
  String? repeatPattern,
  dynamic repeatTime,
  String? repeatStatus,
  String? createdBy,
  String? dueDate,
  String? paidDate,
  String? isReturn,
  String? isNotify,
  String? status,
  String? sortOrder,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? _id,
  purchaseType: purchaseType ?? _purchaseType,
  invoiceId: invoiceId ?? _invoiceId,
  invoiceType: invoiceType ?? _invoiceType,
  userId: userId ?? _userId,
  currency: currency ?? _currency,
  subtotal: subtotal ?? _subtotal,
  discountType: discountType ?? _discountType,
  discountAmount: discountAmount ?? _discountAmount,
  taxAmount: taxAmount ?? _taxAmount,
  payableAmount: payableAmount ?? _payableAmount,
  courseId: courseId ?? _courseId,
  paidAmount: paidAmount ?? _paidAmount,
  dueAmount: dueAmount ?? _dueAmount,
  duePaid: duePaid ?? _duePaid,
  notes: notes ?? _notes,
  totalItem: totalItem ?? _totalItem,
  pmethodId: pmethodId ?? _pmethodId,
  paymentStatus: paymentStatus ?? _paymentStatus,
  repeatPattern: repeatPattern ?? _repeatPattern,
  repeatTime: repeatTime ?? _repeatTime,
  repeatStatus: repeatStatus ?? _repeatStatus,
  createdBy: createdBy ?? _createdBy,
  dueDate: dueDate ?? _dueDate,
  paidDate: paidDate ?? _paidDate,
  isReturn: isReturn ?? _isReturn,
  isNotify: isNotify ?? _isNotify,
  status: status ?? _status,
  sortOrder: sortOrder ?? _sortOrder,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  String? get id => _id;
  String? get purchaseType => _purchaseType;
  String? get invoiceId => _invoiceId;
  String? get invoiceType => _invoiceType;
  String? get userId => _userId;
  String? get currency => _currency;
  String? get subtotal => _subtotal;
  String? get discountType => _discountType;
  String? get discountAmount => _discountAmount;
  String? get taxAmount => _taxAmount;
  String? get payableAmount => _payableAmount;
  String? get courseId => _courseId;
  String? get paidAmount => _paidAmount;
  String? get dueAmount => _dueAmount;
  String? get duePaid => _duePaid;
  dynamic get notes => _notes;
  String? get totalItem => _totalItem;
  String? get pmethodId => _pmethodId;
  String? get paymentStatus => _paymentStatus;
  String? get repeatPattern => _repeatPattern;
  dynamic get repeatTime => _repeatTime;
  String? get repeatStatus => _repeatStatus;
  String? get createdBy => _createdBy;
  String? get dueDate => _dueDate;
  String? get paidDate => _paidDate;
  String? get isReturn => _isReturn;
  String? get isNotify => _isNotify;
  String? get status => _status;
  String? get sortOrder => _sortOrder;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['purchase_type'] = _purchaseType;
    map['invoice_id'] = _invoiceId;
    map['invoice_type'] = _invoiceType;
    map['user_id'] = _userId;
    map['currency'] = _currency;
    map['subtotal'] = _subtotal;
    map['discount_type'] = _discountType;
    map['discount_amount'] = _discountAmount;
    map['tax_amount'] = _taxAmount;
    map['payable_amount'] = _payableAmount;
    map['course_id'] = _courseId;
    map['paid_amount'] = _paidAmount;
    map['due_amount'] = _dueAmount;
    map['due_paid'] = _duePaid;
    map['notes'] = _notes;
    map['total_item'] = _totalItem;
    map['pmethod_id'] = _pmethodId;
    map['payment_status'] = _paymentStatus;
    map['repeat_pattern'] = _repeatPattern;
    map['repeat_time'] = _repeatTime;
    map['repeat_status'] = _repeatStatus;
    map['created_by'] = _createdBy;
    map['due_date'] = _dueDate;
    map['paid_date'] = _paidDate;
    map['is_return'] = _isReturn;
    map['is_notify'] = _isNotify;
    map['status'] = _status;
    map['sort_order'] = _sortOrder;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}
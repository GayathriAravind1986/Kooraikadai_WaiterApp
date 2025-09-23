import 'package:waiterapp/Bloc/Response/errorResponse.dart';

/// success : true
/// data : [{"id":"68a836ea93cf0435f3240c8d","name":"Bala","isAvailable":true,"locationId":{"_id":"68a6b3e9631aa889d193bc4b","name":"Ambasamudram"},"locationName":"Ambasamudram","createdBy":"Ramanas","createdAt":"2025-08-22","updatedAt":"2025-08-22T09:22:50.050Z","statusText":"Available"},{"id":"68a836e493cf0435f3240c84","name":"Raja","isAvailable":true,"locationId":{"_id":"68a6b3e9631aa889d193bc4b","name":"Ambasamudram"},"locationName":"Ambasamudram","createdBy":"Ramanas","createdAt":"2025-08-22","updatedAt":"2025-08-22T09:22:44.894Z","statusText":"Available"}]
/// totalCount : 2

class GetWaiterModel {
  GetWaiterModel({
    bool? success,
    List<Data>? data,
    num? totalCount,
    ErrorResponse? errorResponse,
  }) {
    _success = success;
    _data = data;
    _totalCount = totalCount;
  }

  GetWaiterModel.fromJson(dynamic json) {
    _success = json['success'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    if (json['errors'] != null && json['errors'] is Map<String, dynamic>) {
      errorResponse = ErrorResponse.fromJson(json['errors']);
    } else {
      errorResponse = null;
    }
  }
  bool? _success;
  List<Data>? _data;
  num? _totalCount;
  ErrorResponse? errorResponse;
  GetWaiterModel copyWith({bool? success, List<Data>? data, num? totalCount}) =>
      GetWaiterModel(
        success: success ?? _success,
        data: data ?? _data,
        totalCount: totalCount ?? _totalCount,
      );
  bool? get success => _success;
  List<Data>? get data => _data;
  num? get totalCount => _totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    if (errorResponse != null) {
      map['errors'] = errorResponse!.toJson();
    }
    return map;
  }
}

/// id : "68a836ea93cf0435f3240c8d"
/// name : "Bala"
/// isAvailable : true
/// locationId : {"_id":"68a6b3e9631aa889d193bc4b","name":"Ambasamudram"}
/// locationName : "Ambasamudram"
/// createdBy : "Ramanas"
/// createdAt : "2025-08-22"
/// updatedAt : "2025-08-22T09:22:50.050Z"
/// statusText : "Available"

class Data {
  Data({
    String? id,
    String? name,
    bool? isAvailable,
    LocationId? locationId,
    String? locationName,
    String? createdBy,
    String? createdAt,
    String? updatedAt,
    String? statusText,
    User? user,
  }) {
    _id = id;
    _name = name;
    _isAvailable = isAvailable;
    _locationId = locationId;
    _locationName = locationName;
    _createdBy = createdBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _statusText = statusText;
    _user = user;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _isAvailable = json['isAvailable'];
    _locationId = json['locationId'] != null
        ? LocationId.fromJson(json['locationId'])
        : null;
    _locationName = json['locationName'];
    _createdBy = json['createdBy'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _statusText = json['statusText'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? _id;
  String? _name;
  bool? _isAvailable;
  LocationId? _locationId;
  String? _locationName;
  String? _createdBy;
  String? _createdAt;
  String? _updatedAt;
  String? _statusText;
  User? _user;
  Data copyWith({
    String? id,
    String? name,
    bool? isAvailable,
    LocationId? locationId,
    String? locationName,
    String? createdBy,
    String? createdAt,
    String? updatedAt,
    String? statusText,
    User? user,
  }) => Data(
    id: id ?? _id,
    name: name ?? _name,
    isAvailable: isAvailable ?? _isAvailable,
    locationId: locationId ?? _locationId,
    locationName: locationName ?? _locationName,
    createdBy: createdBy ?? _createdBy,
    createdAt: createdAt ?? _createdAt,
    updatedAt: updatedAt ?? _updatedAt,
    statusText: statusText ?? _statusText,
    user: user ?? _user,
  );
  String? get id => _id;
  String? get name => _name;
  bool? get isAvailable => _isAvailable;
  LocationId? get locationId => _locationId;
  String? get locationName => _locationName;
  String? get createdBy => _createdBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get statusText => _statusText;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['isAvailable'] = _isAvailable;
    if (_locationId != null) {
      map['locationId'] = _locationId?.toJson();
    }
    map['locationName'] = _locationName;
    map['createdBy'] = _createdBy;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['statusText'] = _statusText;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }
}

class User {
  User({String? id, String? name, String? email, bool? isWaiter}) {
    _id = id;
    _name = name;
    _email = email;
    _isWaiter = isWaiter;
  }

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _isWaiter = json['isWaiter'];
  }
  String? _id;
  String? _name;
  String? _email;
  bool? _isWaiter;
  User copyWith({String? id, String? name, String? email, bool? isWaiter}) =>
      User(
        id: id ?? _id,
        name: name ?? _name,
        email: email ?? _email,
        isWaiter: isWaiter ?? _isWaiter,
      );
  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  bool? get isWaiter => _isWaiter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['isWaiter'] = _isWaiter;
    return map;
  }
}

/// _id : "68a6b3e9631aa889d193bc4b"
/// name : "Ambasamudram"

class LocationId {
  LocationId({String? id, String? name}) {
    _id = id;
    _name = name;
  }

  LocationId.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
  LocationId copyWith({String? id, String? name}) =>
      LocationId(id: id ?? _id, name: name ?? _name);
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    return map;
  }
}

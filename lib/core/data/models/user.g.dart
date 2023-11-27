// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedUserData _$$AuthenticatedUserDataFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedUserData(
      id: json['id'] as String?,
      creationDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['creation_date'], const TimestampConverter().fromJson),
      lastUpdateDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['last_update_date'], const TimestampConverter().fromJson),
      email: json['email'] as String,
      name: json['name'] as String,
      avatarPath: json['avatarPath'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedUserDataToJson(
    _$AuthenticatedUserData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', Converters.id(instance.id));
  val['creation_date'] = _$JsonConverterToJson<Timestamp, DateTime>(
      instance.creationDate, const TimestampConverter().toJson);
  val['last_update_date'] = _$JsonConverterToJson<Timestamp, DateTime>(
      instance.lastUpdateDate, const TimestampConverter().toJson);
  val['email'] = instance.email;
  val['name'] = instance.name;
  val['avatarPath'] = instance.avatarPath;
  val['runtimeType'] = instance.$type;
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$AnonymousUserData _$$AnonymousUserDataFromJson(Map<String, dynamic> json) =>
    _$AnonymousUserData(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AnonymousUserDataToJson(_$AnonymousUserData instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingUserData _$$LoadingUserDataFromJson(Map<String, dynamic> json) =>
    _$LoadingUserData(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingUserDataToJson(_$LoadingUserData instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

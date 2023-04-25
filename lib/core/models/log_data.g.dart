// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogData _$LogDataFromJson(Map<String, dynamic> json) => LogData(
      id: json['id'] as String,
      message: json['message'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      payload: json['payload'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$LogDataToJson(LogData instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'message': instance.message,
    'dateTime': instance.dateTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload', instance.payload);
  return val;
}

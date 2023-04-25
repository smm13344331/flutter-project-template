import 'package:json_annotation/json_annotation.dart';

part 'log_data.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class LogData {
  const LogData({
    required this.id,
    required this.message,
    required this.dateTime,
    this.payload,
  });

  final String id;
  final String message;
  final DateTime dateTime;
  final Map<String, dynamic>? payload;

  factory LogData.fromJson(Map<String, dynamic> json) =>
      _$LogDataFromJson(json);

  Map<String, dynamic> toJson() => _$LogDataToJson(this);
}

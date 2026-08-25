import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@Freezed(
    unionKey: 'type',
    unionValueCase: FreezedUnionCase.pascal,
    fallbackUnion: 'openScreen')
sealed class NotificationData with _$NotificationData {
  const factory NotificationData.orderStatusChanged({
    required String id,
    required String status,
    String? screen,
  }) = OrderStatusChanged;

  const factory NotificationData.openScreen({
    String? screen,
    required dynamic data,
  }) = OpenScreen;

  const factory NotificationData.bonusesChanged({
    String? screen,
  }) = BonusesChanged;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
abstract class NotificationHeader with _$NotificationHeader {
  const NotificationHeader._();

  const factory NotificationHeader(
    String title,
    String body,
  ) = _NotificationHeader;

  factory NotificationHeader.fromJsonAndroid(Map<String, dynamic> json) {
    final data = json['notification'] ?? json;
    final title = data['title']?.toString() ?? '';
    final body = data['body']?.toString() ?? '';
    return NotificationHeader(title, body);
  }

  factory NotificationHeader.fromJsonIos(Map<String, dynamic> json) {
    final aps = json['aps'] ?? json;
    final data = aps['alert'] ?? aps;
    final title = data['title']?.toString() ?? '';
    final body = data['body']?.toString() ?? '';
    return NotificationHeader(title, body);
  }

  factory NotificationHeader.fromJson(Map<String, dynamic> json) =>
      _$NotificationHeaderFromJson(json);
}

@freezed
abstract class Notification with _$Notification {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory Notification({
    @JsonKey(readValue: readHeader)
    @NotificationHeaderConverter()
    required NotificationHeader header,
    required NotificationData data,
    @JsonKey(name: 'sentTime') required int sentTime,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

dynamic readHeader(json, key) => json;

class NotificationHeaderConverter
    implements JsonConverter<NotificationHeader, Map<String, dynamic>> {
  const NotificationHeaderConverter();

  @override
  NotificationHeader fromJson(Map<String, dynamic> json) {
    // type data was already set (e.g. because we serialized it ourselves)
    return Platform.isIOS
        ? NotificationHeader.fromJsonIos(json)
        : NotificationHeader.fromJsonAndroid(json);
  }

  @override
  Map<String, dynamic> toJson(NotificationHeader data) => data.toJson();
}

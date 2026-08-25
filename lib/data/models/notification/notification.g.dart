// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusChanged _$OrderStatusChangedFromJson(Map<String, dynamic> json) =>
    OrderStatusChanged(
      id: json['id'] as String,
      status: json['status'] as String,
      screen: json['screen'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OrderStatusChangedToJson(OrderStatusChanged instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'screen': instance.screen,
      'type': instance.$type,
    };

OpenScreen _$OpenScreenFromJson(Map<String, dynamic> json) => OpenScreen(
  screen: json['screen'] as String?,
  data: json['data'],
  $type: json['type'] as String?,
);

Map<String, dynamic> _$OpenScreenToJson(OpenScreen instance) =>
    <String, dynamic>{
      'screen': instance.screen,
      'data': instance.data,
      'type': instance.$type,
    };

BonusesChanged _$BonusesChangedFromJson(Map<String, dynamic> json) =>
    BonusesChanged(
      screen: json['screen'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$BonusesChangedToJson(BonusesChanged instance) =>
    <String, dynamic>{'screen': instance.screen, 'type': instance.$type};

_NotificationHeader _$NotificationHeaderFromJson(Map<String, dynamic> json) =>
    _NotificationHeader(json['title'] as String, json['body'] as String);

Map<String, dynamic> _$NotificationHeaderToJson(_NotificationHeader instance) =>
    <String, dynamic>{'title': instance.title, 'body': instance.body};

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      header: const NotificationHeaderConverter().fromJson(
        readHeader(json, 'header') as Map<String, dynamic>,
      ),
      data: NotificationData.fromJson(json['data'] as Map<String, dynamic>),
      sentTime: (json['sentTime'] as num).toInt(),
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'header': const NotificationHeaderConverter().toJson(instance.header),
      'data': instance.data.toJson(),
      'sentTime': instance.sentTime,
    };

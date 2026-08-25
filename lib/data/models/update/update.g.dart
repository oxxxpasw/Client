// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Updates _$UpdatesFromJson(Map<String, dynamic> json) => _Updates(
  immediateUpdate: Update.fromJson(
    json['immediate_update'] as Map<String, dynamic>,
  ),
  optionalUpdate: Update.fromJson(
    json['optional_update'] as Map<String, dynamic>,
  ),
  storeLinks: json['store_links'] == null
      ? null
      : AppsStoreLinks.fromJson(json['store_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UpdatesToJson(_Updates instance) => <String, dynamic>{
  'immediate_update': instance.immediateUpdate.toJson(),
  'optional_update': instance.optionalUpdate.toJson(),
  'store_links': instance.storeLinks?.toJson(),
};

_AppsStoreLinks _$AppsStoreLinksFromJson(Map<String, dynamic> json) =>
    _AppsStoreLinks(
      googlePlayUrl: json['google_play_url'] as String?,
      itunesUrl: json['itunes_url'] as String?,
      androidMarketUrl: json['android_market_url'] as String?,
    );

Map<String, dynamic> _$AppsStoreLinksToJson(_AppsStoreLinks instance) =>
    <String, dynamic>{
      'google_play_url': instance.googlePlayUrl,
      'itunes_url': instance.itunesUrl,
      'android_market_url': instance.androidMarketUrl,
    };

_Update _$UpdateFromJson(Map<String, dynamic> json) => _Update(
  version: const VersionConverter().fromJson(json['version'] as String),
  enabled: json['enabled'] as bool,
);

Map<String, dynamic> _$UpdateToJson(_Update instance) => <String, dynamic>{
  'version': const VersionConverter().toJson(instance.version),
  'enabled': instance.enabled,
};

_Version _$VersionFromJson(Map<String, dynamic> json) => _Version(
  major: (json['major'] as num).toInt(),
  minor: (json['minor'] as num).toInt(),
  revision: (json['revision'] as num).toInt(),
  buildNumber: (json['build_number'] as num?)?.toInt(),
);

Map<String, dynamic> _$VersionToJson(_Version instance) => <String, dynamic>{
  'major': instance.major,
  'minor': instance.minor,
  'revision': instance.revision,
  'build_number': instance.buildNumber,
};

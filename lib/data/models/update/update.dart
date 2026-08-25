import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update.freezed.dart';
part 'update.g.dart';

@freezed
abstract class Updates with _$Updates {
  const Updates._();

  const factory Updates({
    required Update immediateUpdate,
    required Update optionalUpdate,
    AppsStoreLinks? storeLinks,
  }) = _Updates;

  factory Updates.fromJson(Map<String, dynamic> json) =>
      _$UpdatesFromJson(json);

  UpdateType needUpdate(Version currentVersion) {
    if (immediateUpdate.enabled &&
        immediateUpdate.version.isGreaterThan(currentVersion)) {
      return UpdateType.immediate;
    }
    if (optionalUpdate.enabled &&
        optionalUpdate.version.isGreaterThan(currentVersion)) {
      return UpdateType.optional;
    }
    return UpdateType.none;
  }

  String? get minAppVersion => immediateUpdate.version.format();
}

@freezed
abstract class AppsStoreLinks with _$AppsStoreLinks {
  const factory AppsStoreLinks({
    String? googlePlayUrl,
    String? itunesUrl,
    String? androidMarketUrl,
  }) = _AppsStoreLinks;

  factory AppsStoreLinks.fromJson(Map<String, dynamic> json) =>
      _$AppsStoreLinksFromJson(json);
}

@freezed
abstract class Update with _$Update {
  const Update._();

  const factory Update({
    @VersionConverter() required Version version,
    required bool enabled,
  }) = _Update;

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);
}

@freezed
abstract class Version with _$Version {
  const Version._();

  const factory Version({
    required int major,
    required int minor,
    required int revision,
    int? buildNumber,
  }) = _Version;

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);

  factory Version.parse(String value) {
    final result = RegExp(r"^(\d+)\.(\d+)\.(\d+)\+?(\d+?)$").allMatches(value);
    final match = result.single;
    return Version(
      major: int.parse(match.group(1)!),
      minor: int.parse(match.group(2)!),
      revision: int.parse(match.group(3)!),
      buildNumber: int.tryParse(match.group(4) ?? ''),
    );
  }

  String format() {
    return '$major.$minor.$revision';
  }

  ///Вернет [true] если  версия [other] младше
  bool isGreaterThan(Version other) {
    final versionList = toList();
    final otherVersionList = other.toList();
    bool greater = false;
    for (var i = 0; i < versionList.length; i++) {
      greater = versionList[i] > otherVersionList[i];
      if (versionList[i] != otherVersionList[i]) break;
    }
    return greater;
  }

  List<int> toList() {
    return [major, minor, revision, buildNumber ?? 0];
  }
}

enum UpdateType {
  immediate,
  optional,
  none,
}

class VersionConverter implements JsonConverter<Version, String> {
  const VersionConverter();

  @override
  Version fromJson(String value) {
    return Version.parse(value);
  }

  @override
  String toJson(Version data) => data.toJson.toString();
}

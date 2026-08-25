import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/models/update/update.dart';
import 'package:sosedifedi/data/services/static_files_service.dart';

@singleton
class UpdateRepository {
  UpdateRepository({
    required this.staticFilesService,
  }) {
    subject = BehaviorSubject(onListen: _getUpdates);
  }

  @protected
  final StaticFilesService staticFilesService;

  @protected
  @visibleForTesting
  late final BehaviorSubject<UpdateData> subject;

  Future<void> _getUpdates() async {
    try {
      if (subject.hasValue) {
        return;
      }

      final response = await staticFilesService.getUpdates();
      if (response.hasError) {
        subject.add(const UpdateData(type: UpdateType.none));
        return;
      }
      final updates = response.result;
      final packageInfo = await PackageInfo.fromPlatform();
      final updateType = updates.needUpdate(
        Version.parse('${packageInfo.version}+${packageInfo.buildNumber}'),
      );
      subject.add(
        UpdateData(
          type: updateType,
          minAppVersion: updates.minAppVersion,
          updates: updates,
        ),
      );
    } catch (e) {
      subject.add(const UpdateData(type: UpdateType.none));
      return;
    }
  }

  Future<UpdateData> checkUpdates() => subject.first;

  dispose() {
    subject.close();
  }
}

@immutable
class UpdateData {
  const UpdateData({
    this.type = UpdateType.none,
    this.updates,
    this.minAppVersion,
  });

  final UpdateType type;
  final String? minAppVersion;
  final Updates? updates;
}

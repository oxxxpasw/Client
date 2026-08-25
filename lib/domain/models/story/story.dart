import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/dom.dart';

part 'story.freezed.dart';

@freezed
abstract class StoryData with _$StoryData {
  const StoryData._();

  const factory StoryData({
    required String id,
    @Default([]) List<Story> stories,
  }) = _StoryData;
}

@freezed
abstract class Story with _$Story {
  const factory Story({
    required Uint8List image,
    required Element html,
    String? imageUrl,
  }) = _Story;
}

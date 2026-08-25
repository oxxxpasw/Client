part of 'story_bloc.dart';

@freezed
abstract class StoryState with _$StoryState {
  const factory StoryState({
    @Default(StoryStatus.init) StoryStatus status,
    StoryData? story,
    Story? current,
  }) = _StoryState;
}

@freezed
abstract class StorySr with _$StorySr {
  const factory StorySr.error(String error) = _ErrorSr;
  const factory StorySr.nextStory() = _NextStorySr;
  const factory StorySr.previousStory() = _PreviousStorySr;
}

enum StoryStatus {
  init,
  loading,
  ready,
}

import 'package:freezed_annotation/freezed_annotation.dart';

enum PromotionState {
  @JsonValue(0)
  inactive,

  @JsonValue(1)
  active,

  unknown,
}

enum PromotionCoverageType {
  @JsonValue(0)
  general,

  @JsonValue(1)
  personal,

  unknown,
}

enum PromotionActivityType {
  @JsonValue(0)
  simple,

  @JsonValue(1)
  survey,

  unknown,
}

enum PromotionActivityStatus {
  @JsonValue(0)
  notConducted,

  @JsonValue(1)
  conducted,

  @JsonValue(2)
  notConfirmed,

  @JsonValue(3)
  confirmed,

  unknown,
}

enum SurveyQuestionType {
  @JsonValue(0)
  text,
  @JsonValue(1)
  optionList,
  @JsonValue(3)
  multipleOptionList,
  @JsonValue(4)
  dateTime,
  @JsonValue(5)
  date,
  @JsonValue(6)
  time,
}

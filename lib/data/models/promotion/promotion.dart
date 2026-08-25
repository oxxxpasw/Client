import 'package:sosedifedi/data/models/customer_account_enum/customer_account_enum.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion.freezed.dart';

part 'promotion.g.dart';

@freezed
abstract class PromotionShortInfo with _$PromotionShortInfo {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory PromotionShortInfo({
    required String id,
    required String name,
    required PromotionTitle title,
    @PublicationPlaceJsonConverter()
    @Default(PublicationPlace(0))
    PublicationPlace publicationPlace,
    @Default(PromotionActivityType.unknown)
    @JsonKey(unknownEnumValue: PromotionActivityType.unknown)
    PromotionActivityType activityType,
  }) = _PromotionShortInfo;

  factory PromotionShortInfo.fromJson(Map<String, dynamic> json) =>
      _$PromotionShortInfoFromJson(json);
}

@Freezed(unionKey: 'ActivityType')
abstract class Promotion with _$Promotion {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Promotion.simple({
    required String id,
    required String name,
    @Default(PromotionTitle()) PromotionTitle title,
    String? htmlContent,
    @Default(PromotionActivityStatus.unknown)
    @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)
    PromotionActivityStatus activityStatus,
    @Default(PromotionCoverageType.unknown)
    @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)
    PromotionCoverageType coverageType,
    @Default(PromotionState.unknown)
    @JsonKey(unknownEnumValue: PromotionState.unknown)
    PromotionState state,
    DateTime? expirationDate,
  }) = SimplePromotion;

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Promotion.survey({
    required String id,
    required String name,
    @Default(PromotionTitle()) PromotionTitle title,
    String? htmlContent,
    @Default(PromotionActivityStatus.unknown)
    @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)
    PromotionActivityStatus activityStatus,
    @Default(PromotionCoverageType.unknown)
    @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)
    PromotionCoverageType coverageType,
    @Default(PromotionState.unknown)
    @JsonKey(unknownEnumValue: PromotionState.unknown)
    PromotionState state,
    required SurveyActivity activity,
    SurveyActivityResult? activityResult,
  }) = SurveyPromotion;

  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory Promotion.unknown({
    required String id,
    required String name,
    @Default(PromotionTitle()) PromotionTitle title,
    String? htmlContent,
    @Default(PromotionActivityStatus.unknown)
    @JsonKey(unknownEnumValue: PromotionActivityStatus.unknown)
    PromotionActivityStatus activityStatus,
    @Default(PromotionCoverageType.unknown)
    @JsonKey(unknownEnumValue: PromotionCoverageType.unknown)
    PromotionCoverageType coverageType,
    @Default(PromotionState.unknown)
    @JsonKey(unknownEnumValue: PromotionState.unknown)
    PromotionState state,
  }) = UnknownPromotion;

  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);
}

@freezed
abstract class PromotionTitle with _$PromotionTitle {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory PromotionTitle({
    @Default('') String imageUrl,
  }) = _PromotionTitle;

  factory PromotionTitle.fromJson(Map<String, dynamic> json) =>
      _$PromotionTitleFromJson(json);
}

@freezed
abstract class SurveyActivity with _$SurveyActivity {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyActivity({
    @SurveyQuestionConverter() required List<SurveyQuestion> questions,
    String? sendSurveyResultButtonText,
    String? surveyAlreadyCompletedText,
  }) = _SurveyActivity;

  factory SurveyActivity.fromJson(Map<String, dynamic> json) =>
      _$SurveyActivityFromJson(json);
}

@freezed
abstract class SurveyActivityResult with _$SurveyActivityResult {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyActivityResult({
    Map<String, dynamic>? answers,
  }) = _SurveyActivityResult;

  factory SurveyActivityResult.fromJson(Map<String, dynamic> json) =>
      _$SurveyActivityResultFromJson(json);
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.none)
abstract class SurveyQuestion with _$SurveyQuestion {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyQuestion.text({
    required String name,
    required String title,
    @Default(false) bool required,
    String? tooltip,
    String? hintText,
    TextRegex? regex,
    String? defaultValue,
    @TextInputTypeConverter() TextInputType? textInput,
  }) = TextSurveyQuestion;

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyQuestion.optionList({
    required String name,
    required String title,
    @Default(false) bool required,
    String? tooltip,
    required List<String> options,
    String? defaultValue,
  }) = OptionSurveyQuestion;

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyQuestion.multipleOptionList({
    required String name,
    required String title,
    @Default(false) bool required,
    String? tooltip,
    required List<String> options,
    int? minOptionsNumber,
    int? maxOptionsNumber,
    List<String>? defaultValue,
  }) = MultipleOptionSurveyQuestion;

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyQuestion.dateTime({
    required String name,
    required String title,
    @Default(false) bool required,
    String? tooltip,
    DateTime? minDateTime,
    DateTime? maxDateTime,
    DateTime? defaultValue,
  }) = DateTimeSurveyQuestion;

  @JsonSerializable(fieldRename: FieldRename.none)
  const factory SurveyQuestion.date({
    required String name,
    required String title,
    @Default(false) bool required,
    String? tooltip,
    DateTime? minDate,
    DateTime? maxDate,
    DateTime? defaultValue,
  }) = DateSurveyQuestion;

  // @JsonSerializable(fieldRename: FieldRename.none)
  // const factory SurveyQuestion.time({
  //   required String name,
  //   required String title,
  //   @Default(false) bool required,
  //   String? tooltip,
  // }) = TimeSurveyQuestion;

  factory SurveyQuestion.fromJson(Map<String, dynamic> json) =>
      _$SurveyQuestionFromJson(json);
}

class PromotionConverter
    implements JsonConverter<Promotion, Map<String, dynamic>> {
  const PromotionConverter();

  @override
  Promotion fromJson(Map<String, dynamic> json) {
    switch (json['ActivityType']) {
      case 0:
        json['ActivityType'] = 'simple';
        break;
      case 1:
        json['ActivityType'] = 'survey';
        break;
      default:
        json['ActivityType'] = 'unknown';
        break;
    }
    return Promotion.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(Promotion data) => data.toJson();
}

class SurveyQuestionConverter
    implements JsonConverter<SurveyQuestion, Map<String, dynamic>> {
  const SurveyQuestionConverter();

  @override
  SurveyQuestion fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 0:
        json['type'] = 'text';
        break;
      case 1:
        json['type'] = 'optionList';
        break;
      case 2:
        json['type'] = 'multipleOptionList';
        break;
      case 3:
        json['type'] = 'dateTime';
        break;
      case 4:
        json['type'] = 'date';
        break;
      // case 5:
      //   json['type'] = 'time';
      //   break;
      default:
        json['ActivityType'] = 'text';
        break;
    }
    return SurveyQuestion.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(SurveyQuestion data) => data.toJson();
}

@freezed
abstract class TextRegex with _$TextRegex {
  @JsonSerializable(fieldRename: FieldRename.pascal)
  const factory TextRegex({
    required String pattern,
    required int options,
  }) = _TextRegex;

  factory TextRegex.fromJson(Map<String, dynamic> json) =>
      _$TextRegexFromJson(json);
}

class TextInputTypeConverter
    extends JsonConverter<TextInputType?, Map<String, dynamic>?> {
  const TextInputTypeConverter();

  @override
  TextInputType? fromJson(Map<String, dynamic>? json) {
    try {
      if (json == null) return null;
      switch (json['type']) {
        case (0):
          return TextInputType.text;
        case (1):
          return TextInputType.multiline;
        case (2):
          return TextInputType.numberWithOptions(
            signed: json['signed'] ?? false,
            decimal: json['decimal'] ?? false,
          );
        case (3):
          return TextInputType.phone;
        case (4):
          return TextInputType.datetime;
        case (5):
          return TextInputType.emailAddress;
        case (6):
          return TextInputType.url;
        case (7):
          return TextInputType.visiblePassword;
        case (8):
          return TextInputType.name;
        case (9):
          return TextInputType.streetAddress;
        case (10):
          return TextInputType.none;
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(TextInputType? object) => object?.toJson();
}

enum PublicationPlaceEnum {
  none(0),
  action(1),
  stories(2),
  carousel(4),
  aboutUs(8),
  coupon(16);

  const PublicationPlaceEnum(this.value);

  final int value;

  bool isOn(int mask) {
    return (mask & value) != 0;
  }
}

class PublicationPlace {
  const PublicationPlace(this.value);

  final int value;

  bool hasPlace(PublicationPlaceEnum item) {
    return item.isOn(value);
  }

  List<PublicationPlaceEnum> allPlaces() => PublicationPlaceEnum.values
      .where((element) => element.isOn(value))
      .toList();
}

class PublicationPlaceJsonConverter
    extends JsonConverter<PublicationPlace, int> {
  const PublicationPlaceJsonConverter();

  @override
  PublicationPlace fromJson(int json) => PublicationPlace(json);

  @override
  int toJson(PublicationPlace object) => object.value;
}

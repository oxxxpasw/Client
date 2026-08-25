// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromotionShortInfo _$PromotionShortInfoFromJson(Map<String, dynamic> json) =>
    _PromotionShortInfo(
      id: json['Id'] as String,
      name: json['Name'] as String,
      title: PromotionTitle.fromJson(json['Title'] as Map<String, dynamic>),
      publicationPlace: json['PublicationPlace'] == null
          ? const PublicationPlace(0)
          : const PublicationPlaceJsonConverter().fromJson(
              (json['PublicationPlace'] as num).toInt(),
            ),
      activityType:
          $enumDecodeNullable(
            _$PromotionActivityTypeEnumMap,
            json['ActivityType'],
            unknownValue: PromotionActivityType.unknown,
          ) ??
          PromotionActivityType.unknown,
    );

Map<String, dynamic> _$PromotionShortInfoToJson(_PromotionShortInfo instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Title': instance.title.toJson(),
      'PublicationPlace': const PublicationPlaceJsonConverter().toJson(
        instance.publicationPlace,
      ),
      'ActivityType': _$PromotionActivityTypeEnumMap[instance.activityType]!,
    };

const _$PromotionActivityTypeEnumMap = {
  PromotionActivityType.simple: 0,
  PromotionActivityType.survey: 1,
  PromotionActivityType.unknown: 'unknown',
};

SimplePromotion _$SimplePromotionFromJson(Map<String, dynamic> json) =>
    SimplePromotion(
      id: json['Id'] as String,
      name: json['Name'] as String,
      title: json['Title'] == null
          ? const PromotionTitle()
          : PromotionTitle.fromJson(json['Title'] as Map<String, dynamic>),
      htmlContent: json['HtmlContent'] as String?,
      activityStatus:
          $enumDecodeNullable(
            _$PromotionActivityStatusEnumMap,
            json['ActivityStatus'],
            unknownValue: PromotionActivityStatus.unknown,
          ) ??
          PromotionActivityStatus.unknown,
      coverageType:
          $enumDecodeNullable(
            _$PromotionCoverageTypeEnumMap,
            json['CoverageType'],
            unknownValue: PromotionCoverageType.unknown,
          ) ??
          PromotionCoverageType.unknown,
      state:
          $enumDecodeNullable(
            _$PromotionStateEnumMap,
            json['State'],
            unknownValue: PromotionState.unknown,
          ) ??
          PromotionState.unknown,
      expirationDate: json['ExpirationDate'] == null
          ? null
          : DateTime.parse(json['ExpirationDate'] as String),
      $type: json['ActivityType'] as String?,
    );

Map<String, dynamic> _$SimplePromotionToJson(
  SimplePromotion instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Title': instance.title.toJson(),
  'HtmlContent': instance.htmlContent,
  'ActivityStatus': _$PromotionActivityStatusEnumMap[instance.activityStatus]!,
  'CoverageType': _$PromotionCoverageTypeEnumMap[instance.coverageType]!,
  'State': _$PromotionStateEnumMap[instance.state]!,
  'ExpirationDate': instance.expirationDate?.toIso8601String(),
  'ActivityType': instance.$type,
};

const _$PromotionActivityStatusEnumMap = {
  PromotionActivityStatus.notConducted: 0,
  PromotionActivityStatus.conducted: 1,
  PromotionActivityStatus.notConfirmed: 2,
  PromotionActivityStatus.confirmed: 3,
  PromotionActivityStatus.unknown: 'unknown',
};

const _$PromotionCoverageTypeEnumMap = {
  PromotionCoverageType.general: 0,
  PromotionCoverageType.personal: 1,
  PromotionCoverageType.unknown: 'unknown',
};

const _$PromotionStateEnumMap = {
  PromotionState.inactive: 0,
  PromotionState.active: 1,
  PromotionState.unknown: 'unknown',
};

SurveyPromotion _$SurveyPromotionFromJson(Map<String, dynamic> json) =>
    SurveyPromotion(
      id: json['Id'] as String,
      name: json['Name'] as String,
      title: json['Title'] == null
          ? const PromotionTitle()
          : PromotionTitle.fromJson(json['Title'] as Map<String, dynamic>),
      htmlContent: json['HtmlContent'] as String?,
      activityStatus:
          $enumDecodeNullable(
            _$PromotionActivityStatusEnumMap,
            json['ActivityStatus'],
            unknownValue: PromotionActivityStatus.unknown,
          ) ??
          PromotionActivityStatus.unknown,
      coverageType:
          $enumDecodeNullable(
            _$PromotionCoverageTypeEnumMap,
            json['CoverageType'],
            unknownValue: PromotionCoverageType.unknown,
          ) ??
          PromotionCoverageType.unknown,
      state:
          $enumDecodeNullable(
            _$PromotionStateEnumMap,
            json['State'],
            unknownValue: PromotionState.unknown,
          ) ??
          PromotionState.unknown,
      activity: SurveyActivity.fromJson(
        json['Activity'] as Map<String, dynamic>,
      ),
      activityResult: json['ActivityResult'] == null
          ? null
          : SurveyActivityResult.fromJson(
              json['ActivityResult'] as Map<String, dynamic>,
            ),
      $type: json['ActivityType'] as String?,
    );

Map<String, dynamic> _$SurveyPromotionToJson(
  SurveyPromotion instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Title': instance.title.toJson(),
  'HtmlContent': instance.htmlContent,
  'ActivityStatus': _$PromotionActivityStatusEnumMap[instance.activityStatus]!,
  'CoverageType': _$PromotionCoverageTypeEnumMap[instance.coverageType]!,
  'State': _$PromotionStateEnumMap[instance.state]!,
  'Activity': instance.activity.toJson(),
  'ActivityResult': instance.activityResult?.toJson(),
  'ActivityType': instance.$type,
};

UnknownPromotion _$UnknownPromotionFromJson(Map<String, dynamic> json) =>
    UnknownPromotion(
      id: json['Id'] as String,
      name: json['Name'] as String,
      title: json['Title'] == null
          ? const PromotionTitle()
          : PromotionTitle.fromJson(json['Title'] as Map<String, dynamic>),
      htmlContent: json['HtmlContent'] as String?,
      activityStatus:
          $enumDecodeNullable(
            _$PromotionActivityStatusEnumMap,
            json['ActivityStatus'],
            unknownValue: PromotionActivityStatus.unknown,
          ) ??
          PromotionActivityStatus.unknown,
      coverageType:
          $enumDecodeNullable(
            _$PromotionCoverageTypeEnumMap,
            json['CoverageType'],
            unknownValue: PromotionCoverageType.unknown,
          ) ??
          PromotionCoverageType.unknown,
      state:
          $enumDecodeNullable(
            _$PromotionStateEnumMap,
            json['State'],
            unknownValue: PromotionState.unknown,
          ) ??
          PromotionState.unknown,
      $type: json['ActivityType'] as String?,
    );

Map<String, dynamic> _$UnknownPromotionToJson(
  UnknownPromotion instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Title': instance.title.toJson(),
  'HtmlContent': instance.htmlContent,
  'ActivityStatus': _$PromotionActivityStatusEnumMap[instance.activityStatus]!,
  'CoverageType': _$PromotionCoverageTypeEnumMap[instance.coverageType]!,
  'State': _$PromotionStateEnumMap[instance.state]!,
  'ActivityType': instance.$type,
};

_PromotionTitle _$PromotionTitleFromJson(Map<String, dynamic> json) =>
    _PromotionTitle(imageUrl: json['imageUrl'] as String? ?? '');

Map<String, dynamic> _$PromotionTitleToJson(_PromotionTitle instance) =>
    <String, dynamic>{'imageUrl': instance.imageUrl};

_SurveyActivity _$SurveyActivityFromJson(Map<String, dynamic> json) =>
    _SurveyActivity(
      questions: (json['questions'] as List<dynamic>)
          .map(
            (e) => const SurveyQuestionConverter().fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
      sendSurveyResultButtonText: json['sendSurveyResultButtonText'] as String?,
      surveyAlreadyCompletedText: json['surveyAlreadyCompletedText'] as String?,
    );

Map<String, dynamic> _$SurveyActivityToJson(_SurveyActivity instance) =>
    <String, dynamic>{
      'questions': instance.questions
          .map(const SurveyQuestionConverter().toJson)
          .toList(),
      'sendSurveyResultButtonText': instance.sendSurveyResultButtonText,
      'surveyAlreadyCompletedText': instance.surveyAlreadyCompletedText,
    };

_SurveyActivityResult _$SurveyActivityResultFromJson(
  Map<String, dynamic> json,
) => _SurveyActivityResult(answers: json['answers'] as Map<String, dynamic>?);

Map<String, dynamic> _$SurveyActivityResultToJson(
  _SurveyActivityResult instance,
) => <String, dynamic>{'answers': instance.answers};

TextSurveyQuestion _$TextSurveyQuestionFromJson(Map<String, dynamic> json) =>
    TextSurveyQuestion(
      name: json['name'] as String,
      title: json['title'] as String,
      required: json['required'] as bool? ?? false,
      tooltip: json['tooltip'] as String?,
      hintText: json['hintText'] as String?,
      regex: json['regex'] == null
          ? null
          : TextRegex.fromJson(json['regex'] as Map<String, dynamic>),
      defaultValue: json['defaultValue'] as String?,
      textInput: const TextInputTypeConverter().fromJson(
        json['textInput'] as Map<String, dynamic>?,
      ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TextSurveyQuestionToJson(TextSurveyQuestion instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'required': instance.required,
      'tooltip': instance.tooltip,
      'hintText': instance.hintText,
      'regex': instance.regex?.toJson(),
      'defaultValue': instance.defaultValue,
      'textInput': const TextInputTypeConverter().toJson(instance.textInput),
      'type': instance.$type,
    };

OptionSurveyQuestion _$OptionSurveyQuestionFromJson(
  Map<String, dynamic> json,
) => OptionSurveyQuestion(
  name: json['name'] as String,
  title: json['title'] as String,
  required: json['required'] as bool? ?? false,
  tooltip: json['tooltip'] as String?,
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  defaultValue: json['defaultValue'] as String?,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$OptionSurveyQuestionToJson(
  OptionSurveyQuestion instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'required': instance.required,
  'tooltip': instance.tooltip,
  'options': instance.options,
  'defaultValue': instance.defaultValue,
  'type': instance.$type,
};

MultipleOptionSurveyQuestion _$MultipleOptionSurveyQuestionFromJson(
  Map<String, dynamic> json,
) => MultipleOptionSurveyQuestion(
  name: json['name'] as String,
  title: json['title'] as String,
  required: json['required'] as bool? ?? false,
  tooltip: json['tooltip'] as String?,
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  minOptionsNumber: (json['minOptionsNumber'] as num?)?.toInt(),
  maxOptionsNumber: (json['maxOptionsNumber'] as num?)?.toInt(),
  defaultValue: (json['defaultValue'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$MultipleOptionSurveyQuestionToJson(
  MultipleOptionSurveyQuestion instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'required': instance.required,
  'tooltip': instance.tooltip,
  'options': instance.options,
  'minOptionsNumber': instance.minOptionsNumber,
  'maxOptionsNumber': instance.maxOptionsNumber,
  'defaultValue': instance.defaultValue,
  'type': instance.$type,
};

DateTimeSurveyQuestion _$DateTimeSurveyQuestionFromJson(
  Map<String, dynamic> json,
) => DateTimeSurveyQuestion(
  name: json['name'] as String,
  title: json['title'] as String,
  required: json['required'] as bool? ?? false,
  tooltip: json['tooltip'] as String?,
  minDateTime: json['minDateTime'] == null
      ? null
      : DateTime.parse(json['minDateTime'] as String),
  maxDateTime: json['maxDateTime'] == null
      ? null
      : DateTime.parse(json['maxDateTime'] as String),
  defaultValue: json['defaultValue'] == null
      ? null
      : DateTime.parse(json['defaultValue'] as String),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$DateTimeSurveyQuestionToJson(
  DateTimeSurveyQuestion instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'required': instance.required,
  'tooltip': instance.tooltip,
  'minDateTime': instance.minDateTime?.toIso8601String(),
  'maxDateTime': instance.maxDateTime?.toIso8601String(),
  'defaultValue': instance.defaultValue?.toIso8601String(),
  'type': instance.$type,
};

DateSurveyQuestion _$DateSurveyQuestionFromJson(Map<String, dynamic> json) =>
    DateSurveyQuestion(
      name: json['name'] as String,
      title: json['title'] as String,
      required: json['required'] as bool? ?? false,
      tooltip: json['tooltip'] as String?,
      minDate: json['minDate'] == null
          ? null
          : DateTime.parse(json['minDate'] as String),
      maxDate: json['maxDate'] == null
          ? null
          : DateTime.parse(json['maxDate'] as String),
      defaultValue: json['defaultValue'] == null
          ? null
          : DateTime.parse(json['defaultValue'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$DateSurveyQuestionToJson(DateSurveyQuestion instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'required': instance.required,
      'tooltip': instance.tooltip,
      'minDate': instance.minDate?.toIso8601String(),
      'maxDate': instance.maxDate?.toIso8601String(),
      'defaultValue': instance.defaultValue?.toIso8601String(),
      'type': instance.$type,
    };

_TextRegex _$TextRegexFromJson(Map<String, dynamic> json) => _TextRegex(
  pattern: json['Pattern'] as String,
  options: (json['Options'] as num).toInt(),
);

Map<String, dynamic> _$TextRegexToJson(_TextRegex instance) =>
    <String, dynamic>{'Pattern': instance.pattern, 'Options': instance.options};

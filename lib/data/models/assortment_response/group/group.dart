part of '../assortment_response.dart';

@freezed
abstract class GroupResponse with _$GroupResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory GroupResponse({
    required String id,
    @Default('') @JsonKey(name: 'label') String name,
    @JsonKey(name: 'parentGroupId') String? groupId,
    @Default([]) List<String> products,
    String? image,
  }) = _GroupResponse;

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupResponseFromJson(json);
}

part of 'review_bloc.dart';

@freezed
abstract class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.init({
    Store? store,
    AcceptedOrder? order,
    Product? product,
  }) = _Init;

  const factory ReviewEvent.submit({
    required String comment,
    required int rating,
    required List<XFile> images,
  }) = _Submit;
}

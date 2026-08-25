import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/product/product.dart';

part 'review.freezed.dart';

@freezed
abstract class Review with _$Review {
  const factory Review({
    required String comment,
    required int rating,
    required List<XFile> images,
    Store? store,
    Product? product,
    AcceptedOrder? order,
  }) = _Review;
}

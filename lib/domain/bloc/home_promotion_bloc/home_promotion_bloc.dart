import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/domain/models/customer_account_model/customer_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_promotion_bloc.freezed.dart';
part 'home_promotion_state.dart';

@injectable
class HomePromotionBloc extends Cubit<HomePromotionState> {
  HomePromotionBloc({
    required this.customerAccountRepository,
  }) : super(const HomePromotionState()) {
    _subscription = customerAccountRepository.customerAccount.listen((event) {
      emit(
        HomePromotionState(
          promotions: event?.promotions
              .where((element) => element.publicationPlace
                  .hasPlace(PublicationPlaceEnum.carousel))
              .toList(),
        ),
      );
    });
  }

  @protected
  final CustomerAccountRepository customerAccountRepository;

  StreamSubscription<CustomerAccountModel?>? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

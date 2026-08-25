import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'feedback_cubit.freezed.dart';
part 'feedback_state.dart';

@injectable
class FeedbackCubit extends SrCubit<FeedbackState, FeedbackSr> {
  FeedbackCubit(@factoryParam FeedbackType type, @factoryParam this.purchase)
      : super(FeedbackState(type: type));

  final AcceptedOrder? purchase;

  Future<void> init() async {
    await Future.delayed(Duration.zero);
    switch (state.type) {
      case FeedbackType.purchase when purchase != null:
        addSr(FeedbackSr.showFormForPurchase(purchase!));
        break;
      case FeedbackType.purchase:
        addSr(const FeedbackSr.showOrderList());
        break;
      case FeedbackType.store:
        addSr(const FeedbackSr.showStoreList());
        break;
    }
    emit(
      state.copyWith(
        status: FeedbackStateStatus.ready,
      ),
    );
  }

  void onStoreSelected(Store store) {
    addSr(FeedbackSr.showFormForStore(store));
  }

  void onPurchaseSelected(AcceptedOrder purchase) {
    addSr(FeedbackSr.showFormForPurchase(purchase));
  }

  void onQrScannerPressed() {
    addSr(const FeedbackSr.showQrScanner());
  }
}

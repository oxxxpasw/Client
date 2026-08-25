import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/domain/bloc/choose_payment_type_bloc/choose_payment_type_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

class ChoosePaymentTypeScreen extends StatelessWidget {
  const ChoosePaymentTypeScreen({
    super.key,
    required this.storeId,
  });

  final String storeId;

  @override
  Widget build(BuildContext context) {
    return ChoosePaymentTypeWidget(
      storeId: storeId,
      onPaymentSelected: (PaymentType? type) => context.router.pop(type),
    );
  }
}

typedef OnPaymentSelected = void Function(PaymentType?);

typedef OnPaymentChanged = void Function(PaymentType?);

class ChoosePaymentTypeWidget extends StatelessWidget {
  const ChoosePaymentTypeWidget({
    super.key,
    required this.storeId,
    this.onPaymentSelected,
    this.sum,
    this.child,
    this.enabled = true,
    this.onPaymentChanged,
  });

  final String storeId;
  final OnPaymentSelected? onPaymentSelected;
  final OnPaymentChanged? onPaymentChanged;
  final double? sum;
  final Widget? child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<ChoosePaymentTypeBloc>(
        create: (context) => GetIt.I.get(
          param1: storeId,
        )..add(const ChoosePaymentTypeEvent.init()),
        child: ChoosePaymentTypeBody(
          onPaymentSelected: onPaymentSelected,
          onPaymentChanged: onPaymentChanged,
          sum: sum,
          enabled: enabled,
          child: child,
        ),
      ),
    );
  }
}

class ChoosePaymentTypeBody extends StatefulWidget {
  const ChoosePaymentTypeBody({
    super.key,
    this.onPaymentSelected,
    this.sum,
    this.child,
    required this.enabled,
    this.onPaymentChanged,
  });

  final OnPaymentSelected? onPaymentSelected;
  final OnPaymentChanged? onPaymentChanged;
  final double? sum;
  final Widget? child;

  final bool enabled;

  @override
  State<ChoosePaymentTypeBody> createState() => _ChoosePaymentTypeBodyState();
}

class _ChoosePaymentTypeBodyState extends State<ChoosePaymentTypeBody> {
  @override
  void initState() {
    super.initState();
    context
        .read<ChoosePaymentTypeBloc>()
        .add(ChoosePaymentTypeEvent.setStatus(widget.enabled));
  }

  @override
  void didUpdateWidget(covariant ChoosePaymentTypeBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    context
        .read<ChoosePaymentTypeBloc>()
        .add(ChoosePaymentTypeEvent.setStatus(widget.enabled));
  }

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<ChoosePaymentTypeBloc, ChoosePaymentTypeState,
        ChoosePaymentTypeSr>(
      onSR: (context, sr) => switch (sr) {
        ChoosePaymentTypeErrorSr(:final error) => Messenger.showMessage(
            context: context,
            message: error,
          ),
        ChoosePaymentTypeOpenRegisterCardSr(:final url) => context.router
            .push(
              WebViewPaymentRoute(url: url.toString()),
            )
            .then(
              (_) => context.mounted
                  ? context
                      .read<ChoosePaymentTypeBloc>()
                      .add(const ChoosePaymentTypeEvent.init())
                  : null,
            ),
        ChoosePaymentTypeSelectSr(:final type) =>
          widget.onPaymentSelected?.call(type),
        ChoosePaymentTypeCardDeactivatedSr() => Messenger.showMessage(
            context: context,
            message:
                context.tr(LocaleKeys.choosePayment_successCardDeactivation),
            messageType: MessageType.success,
          ),
        ChoosePaymentTypeChangedSr(:final type) =>
          widget.onPaymentChanged?.call(type),
      },
      buildWhen: (current, previous) =>
          current.status != previous.status ||
          current.selectedPaymentType != previous.selectedPaymentType,
      builder: (context, state) => switch (state.status) {
        ChoosePaymentTypeStatus.loading ||
        ChoosePaymentTypeStatus.init =>
          const ChoosePaymentTypeLoading(),
        ChoosePaymentTypeStatus.ready => ChoosePaymentTypeList(
            sum: widget.sum,
            child: widget.child,
          ),
      },
    );
  }
}

class ChoosePaymentTypeLoading extends StatelessWidget {
  const ChoosePaymentTypeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class ChoosePaymentTypeList extends StatelessWidget {
  const ChoosePaymentTypeList({
    super.key,
    this.sum,
    this.child,
  });

  final double? sum;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: BlocBuilder<ChoosePaymentTypeBloc, ChoosePaymentTypeState>(
            builder: (context, state) {
              final children = <Widget>[];
              if (child != null) {
                children.add(child!);
              }
              for (final item in state.paymentTypes!) {
                if (item.type == PaymentMethod.sbp) continue; // Отключаем СБП для РБ
                children.add(
                  PaymentTypeWidget(
                    paymentType: item,
                    isSelected: item == state.selectedPaymentType,
                    onPressed: () {
                      context
                          .read<ChoosePaymentTypeBloc>()
                          .add(ChoosePaymentTypeEvent.paymentTypePressed(item));
                    },
                    onDeactivate: switch (item) {
                      LinkedCardPaymentType() => () =>
                          _deactivateCard(context, item),
                      _ => null,
                    },
                  ),
                );
              }
              return ListView.separated(
                physics: const ScrollPhysics(),
                itemCount: children.length,
                padding: const EdgeInsets.all(AppInsets.padding16),
                itemBuilder: (_, index) => children[index],
                separatorBuilder: (_, __) => const SizedBox(
                  height: AppInsets.padding16,
                ),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(AppInsets.padding16),
          child: _ActionButtonWidget(),
        )
      ],
    );
  }

  Future<void> _deactivateCard(
      BuildContext context, LinkedCardPaymentType type) async {
    final result = await showAdaptiveConfirmDialog(
      context: context,
      title: Text(
        context.tr(
          LocaleKeys.choosePayment_deactivateCardDialog_title,
          args: [type.name],
        ),
      ),
      defaultAction: ConfirmDialogAction.cancel,
    );
    if (context.mounted && result == ConfirmDialogResult.confirm) {
      context
          .read<ChoosePaymentTypeBloc>()
          .add(ChoosePaymentTypeEvent.deactivateCardPressed(type));
    }
  }
}

class PaymentTypeWidget extends StatelessWidget {
  const PaymentTypeWidget({
    super.key,
    required this.paymentType,
    this.isSelected = false,
    this.onPressed,
    this.onDeactivate,
  });

  final PaymentType paymentType;
  final bool isSelected;
  final VoidCallback? onPressed;
  final VoidCallback? onDeactivate;

  @override
  Widget build(BuildContext context) {
    if (paymentType.type == PaymentMethod.applePay) {
      return ApplePayPaymentTypeWidget(
        paymentType: paymentType,
        isSelected: isSelected,
        onPressed: onPressed,
      );
    }
    return RegularPaymentTypeWidget(
      paymentType: paymentType,
      isSelected: isSelected,
      onPressed: onPressed,
      onDeactivate: onDeactivate,
    );
  }
}

class RegularPaymentTypeWidget extends StatelessWidget {
  const RegularPaymentTypeWidget({
    super.key,
    required this.paymentType,
    this.isSelected = false,
    this.onPressed,
    this.onDeactivate,
  });

  final PaymentType paymentType;
  final bool isSelected;
  final VoidCallback? onPressed;
  final VoidCallback? onDeactivate;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: true,
      enabled: true,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Row(children: [
              if (paymentType.imageUrl != null)
                CachedNetworkImage(
                  imageUrl: paymentType.imageUrl!,
                  width: 40,
                  height: 40.0,
                  fit: BoxFit.contain,
                ),
              const SizedBox(
                width: AppInsets.padding16,
              ),
              Expanded(
                child: Text(
                  paymentType.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              if (onDeactivate != null)
                IconButton(
                  icon: const Icon(CupertinoIcons.delete),
                  color: ColorScheme.of(context).onSurface,
                  onPressed: onDeactivate,
                ),
            ]),
          ),
        ),
      ),
    );
  }
}

class ApplePayPaymentTypeWidget extends StatelessWidget {
  const ApplePayPaymentTypeWidget({
    super.key,
    required this.paymentType,
    this.isSelected = false,
    this.onPressed,
  });

  final PaymentType paymentType;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      button: true,
      enabled: true,
      child: Card(
        color: Colors.black,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2.0,
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(AppBorderRadius.medium),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (paymentType.imageUrl != null)
                    CachedNetworkImage(
                      imageUrl: paymentType.imageUrl!,
                      width: 40,
                      height: 40.0,
                      fit: BoxFit.contain,
                    ),
                  const SizedBox(
                    width: AppInsets.padding16,
                  ),
                  Text(
                    paymentType.name,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButtonWidget extends StatelessWidget {
  const _ActionButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      context
          .read<ChoosePaymentTypeBloc>()
          .add(const ChoosePaymentTypeEvent.submitPressed());
    }

    final cartState = context.watch<CartBloc>().state;
    final paymentTypeState = context.watch<ChoosePaymentTypeBloc>().state;

    final isLoading = cartState.status != CartStateStatus.ready;

    if (isLoading) {
      return const FilledButton(
        onPressed: null,
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 2.0,
          ),
        ),
      );
    }

    final enabled = cartState.validToOrder;

    final text = paymentTypeState.selectedPaymentType is RegisterCardPaymentType
        ? context.tr(LocaleKeys.choosePayment_linkCard)
        : context.tr(LocaleKeys.cart_checkout);

    return FilledButtonWithArrow(
      onPressed: enabled ? onPressed : null,
      label: Text(
          "$text | ${Currency.convertToPrice(cartState.currencySymbol, cartState.orderPrice)}"),
    );
  }
}

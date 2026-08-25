import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sosedifedi/domain/bloc/sbp_payment_bloc/sbp_payment_bloc.dart';
import 'package:sosedifedi/domain/models/sbp_bank/sbp_bank.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/custom_search_bar.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

@RoutePage()
class ChooseSpbPaymentScreen extends StatefulWidget implements AutoRouteWrapper {
  const ChooseSpbPaymentScreen({
    super.key,
    required this.qrUrl,
    required this.paymentId,
    required this.storeId,
    required this.onFailedPayment,
    this.onBankOpened,
    this.onPayment,
  });

  final Uri qrUrl;
  final String paymentId;
  final String storeId;
  final VoidCallback? onPayment;
  final VoidCallback? onFailedPayment;
  final VoidCallback? onBankOpened;

  @override
  State<ChooseSpbPaymentScreen> createState() => _ChooseSpbPaymentScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SBPPaymentBloc>(
      create: (context) => GetIt.I.get(param1: qrUrl, param2: paymentId)
        ..loadData(
          isIOS: defaultTargetPlatform == TargetPlatform.iOS,
          storeId: storeId,
        ),
      child: this,
    );
  }
}

class _ChooseSpbPaymentScreenState extends State<ChooseSpbPaymentScreen> {
  bool _needShowDialog = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (_needShowDialog) {
          return _showPopDialog(context);
        }
        return Future.value(true);
      },
      child: SrBlocBuilder<SBPPaymentBloc, SBPPaymentState, SBPPaymentSr>(
        onSR: (context, sr) {
          sr.when(
            error: (error) {
              Messenger.showMessage(context: context, message: error);
            },
            successPayment: () {
              _needShowDialog = false;
              widget.onPayment?.call();
            },
            failedPayment: () {
              _needShowDialog = false;
              widget.onFailedPayment?.call();
            },
            bankAppNotInstalled: () {
              context.router.push(
                const BankAppNotInstalledPopup(),
              );
            },
            bankOpened: () {
              widget.onBankOpened?.call();
            },
          );
        },
        builder: (context, state) {
          if (state.status == SBPPaymentStateStatus.loading ||
              state.status == SBPPaymentStateStatus.init) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return buildContent(context, state);
        },
      ),
    );
  }

  Widget buildContent(BuildContext context, SBPPaymentState state) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/svg/sbp_logo.svg',
                    height: 65,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: AppInsets.padding16,
                  ),
                  Text(
                    context.tr(LocaleKeys.sbp_choose),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Expanded(
              child: defaultTargetPlatform != TargetPlatform.iOS
                  ? PaymentList(
                      banks: state.availableBanks!,
                      isWaitPayment: state.status == SBPPaymentStateStatus.wait,
                    )
                  : PaymentListIOS(
                      banks: state.availableBanks!,
                      isWaitPayment: state.status == SBPPaymentStateStatus.wait,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _showPopDialog(BuildContext context) async {
    final result = await showAdaptiveConfirmDialog(
      context: context,
      defaultAction: ConfirmDialogAction.cancel,
      title: Text(
        context.tr(LocaleKeys.confirmOrder_paymentDismissDialogMessage),
      ),
    );
    return result == ConfirmDialogResult.confirm;
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class PaymentList extends StatelessWidget {
  const PaymentList({
    super.key,
    required this.banks,
    this.isWaitPayment = false,
  });

  final List<SbpBank> banks;
  final bool isWaitPayment;

  @override
  Widget build(BuildContext context) {
    if (isWaitPayment) {
      return const WaitPaymentWidget();
    }

    if (banks.isEmpty) {
      return Center(
        child: Text(
          context.tr(LocaleKeys.sbp_banksNotFound),
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: AppInsets.padding16,
        vertical: AppInsets.padding8,
      ),
      itemCount: banks.length,
      controller: ModalScrollController.of(context),
      itemBuilder: (context, index) => BankItem(
        bank: banks[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: AppInsets.padding16,
      ),
    );
  }
}

class PaymentListIOS extends StatefulWidget {
  const PaymentListIOS({
    super.key,
    required this.banks,
    this.isWaitPayment = false,
  });

  final List<SbpBank> banks;
  final bool isWaitPayment;

  @override
  State<PaymentListIOS> createState() => _PaymentListIOSState();
}

class _PaymentListIOSState extends State<PaymentListIOS> {
  late List<SbpBank> banks;
  String query = '';

  @override
  void initState() {
    super.initState();
    banks = widget.banks;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppInsets.padding16),
          child: CustomSearchBar(
            enabled: !widget.isWaitPayment,
            leading: const Icon(DerevenkaDobrenkaIcons.search),
            hintText: context.tr(LocaleKeys.sbp_enterBankName),
            backgroundColor: MaterialStateProperty.all(
              Theme.of(context)
                  .extension<CustomThemeExtension>()!
                  .secondaryBackground,
            ),
            onChanged: (value) => setState(() => _filter(value.trim())),
          ),
        ),
        const SizedBox(
          height: AppInsets.padding16,
        ),
        Expanded(
          child: Builder(builder: (context) {
            if (widget.isWaitPayment) {
              return const WaitPaymentWidget();
            }
            return ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: AppInsets.padding16,
                vertical: AppInsets.padding8,
              ),
              physics: const ClampingScrollPhysics(),
              itemCount: banks.length,
              controller: ModalScrollController.of(context),
              itemBuilder: (context, index) => BankItem(
                bank: banks[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: AppInsets.padding16,
              ),
            );
          }),
        ),
      ],
    );
  }

  _filter([String? query]) {
    this.query = query?.toLowerCase() ?? this.query;
    if (this.query.isEmpty) {
      banks = widget.banks;
      return;
    }
    banks = widget.banks
        .where((element) => element.bankName.toLowerCase().contains(this.query))
        .toList();
  }

  @override
  void didUpdateWidget(covariant PaymentListIOS oldWidget) {
    super.didUpdateWidget(oldWidget);
    _filter();
  }
}

class BankItem extends StatelessWidget {
  const BankItem({super.key, required this.bank});

  final SbpBank bank;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          context.read<SBPPaymentBloc>().processPayment(bank);
        },
        child: Padding(
          padding: const EdgeInsets.all(AppInsets.padding16),
          child: Row(
            children: [
              if (bank.logoURL != null)
                buildBankImage(context, bank.logoURL!)
              else
                buildEmptyImage(context),
              const SizedBox(
                width: AppInsets.padding16,
              ),
              Expanded(
                child: Text(
                  bank.bankName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBankImage(BuildContext context, Uri uri) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.background,
      backgroundImage: NetworkImage(uri.toString()),
      radius: 20.0,
    );
  }

  Widget buildEmptyImage(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).colorScheme.background,
      radius: 20.0,
    );
  }
}

class WaitPaymentWidget extends StatelessWidget {
  const WaitPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppInsets.padding16),
      child: Column(
        children: [
          const Spacer(),
          const CircularProgressIndicator.adaptive(),
          const SizedBox(
            height: AppInsets.padding32,
          ),
          Text(context.tr(LocaleKeys.sbp_waitPayment)),
          const Spacer(),
          TextButton(
            onPressed: () {
              context.read<SBPPaymentBloc>().selectNewBank();
            },
            child: Text(
              context.tr(LocaleKeys.sbp_chooseAnotherBank),
            ),
          ),
        ],
      ),
    );
  }
}

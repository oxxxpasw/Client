import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/domain/bloc/review_bloc/review_bloc.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/filled_button_with_arrow/filled_button_with_arrow.dart';
import 'package:sosedifedi/presentation/components/popup/popup.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

import '../components/border.dart';
import '../components/feedback_scaffold_widget.dart';
import '../components/image_picker.dart';
import '../components/rating_form_builder_field.dart';

abstract class _FeedbackFormKey {
  static const String rating = 'rating';
  static const String comment = 'comment';
  static const String images = 'images';
}

@RoutePage()
class AppFeedbackScreen extends StatefulWidget implements AutoRouteWrapper {
  const AppFeedbackScreen({
    super.key,
    this.store,
    this.order,
    this.product,
  });

  final Store? store;
  final AcceptedOrder? order;
  final Product? product;

  @override
  State<AppFeedbackScreen> createState() => _AppFeedbackScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ReviewBloc>(
      create: (context) => GetIt.I.get()
        ..add(
          ReviewEvent.init(
            store: store,
            order: order,
            product: product,
          ),
        ),
      child: this,
    );
  }
}

class _AppFeedbackScreenState extends State<AppFeedbackScreen> {
  double get _imageMaxSize => GetIt.I.get<AppEnvironment>().uploadImageMaxSize;

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final inputTheme = Theme.of(context).inputDecorationTheme;

    final fontSize = inputTheme.floatingLabelStyle?.fontSize ??
        DefaultTextStyle.of(context).style.fontSize ??
        14.0;

    final floatingLabelStyle = inputTheme.floatingLabelStyle?.copyWith(
      height: 1.0,
      fontSize: MediaQuery.textScalerOf(context).scale(0.75 * fontSize),
    );

    return StreamListener(
      stream: context.read<ReviewBloc>().singleResults,
      onData: (sr) => switch (sr) {
        ReviewSuccessSr() => () {
            context.router.root.popUntil(
              ModalRoute.withName(MainRoute.name),
            );
            showPopup(
              context: context,
              title: Text(
                LocaleKeys.feedbackScreen_reviewCreated_title
                    .tr(context: context),
              ),
              confirmLabel: Text(
                LocaleKeys.feedbackScreen_reviewCreated_action
                    .tr(context: context),
              ),
            );
          }(),
        ReviewErrorSr(:final message) => Messenger.showMessage(
            context: context,
            message: message,
          ),
      },
      child: FormBuilder(
        key: _formKey,
        child: FeedbackScaffoldWidget(
          action: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: FeedbackActionButtonWidget(
              onSubmit: onSubmit,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppInsets.padding16,
            ),
            physics: const ScrollPhysics(),
            children: [
              const Divider(
                height: 1.0,
              ),
              const SizedBox(
                height: AppInsets.padding8,
              ),
              TestWidget(
                textStyle: floatingLabelStyle,
              ),
              Text(
                LocaleKeys.feedbackScreen_rating_label.tr(context: context),
                style: floatingLabelStyle,
              ),
              Builder(
                builder: (context) {
                  final color = Theme.of(context)
                          .extension<CustomThemeExtension>()
                          ?.rating ??
                      Colors.amber;
                  return RatingFormBuilderField(
                    name: _FeedbackFormKey.rating,
                    minRating: 1,
                    itemPadding: const EdgeInsets.only(
                      top: AppInsets.padding4,
                    ),
                    icon: DerevenkaDobrenkaIcons.starFilled,
                    unratedIcon: DerevenkaDobrenkaIcons.star,
                    itemSize: 30,
                    color: color,
                    unratedColor: color,
                    validator: FormBuilderValidators.required(),
                  );
                },
              ),
              const Divider(),
              FormBuilderTextField(
                name: _FeedbackFormKey.comment,
                decoration: InputDecoration(
                  labelText: LocaleKeys.feedbackScreen_comment_label
                      .tr(context: context),
                  hintText: LocaleKeys.feedbackScreen_comment_hint
                      .tr(context: context),
                ),
                minLines: 1,
                maxLines: 5,
                valueTransformer: (value) => value?.trim(),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.maxLength(1000),
                ]),
                maxLength: 1000,
              ),
              const SizedBox(
                height: AppInsets.padding16,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: AppInsets.padding8),
                child: Text(
                  LocaleKeys.feedbackScreen_photo_label.tr(context: context),
                  style: floatingLabelStyle,
                ),
              ),
              ListTileTheme(
                data: ListTileTheme.of(context).copyWith(
                  tileColor: ColorScheme.of(context).surface,
                ),
                child: FormBuilderImagePicker2(
                  icon: Icons.image,
                  onChanged: (images) {
                    if (images == null || images.length <= 3) return;
                    _formKey.currentState?.patchValue(
                      {
                        _FeedbackFormKey.images: images.sublist(0, 3),
                      },
                    );
                  },
                  transformImageWidget: (context, child) {
                    return SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: child,
                    );
                  },
                  previewBuilder: (context, children, button) {
                    return Column(
                      children: [
                        if (children.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppInsets.padding8,
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: Wrap(
                                spacing: AppInsets.padding4,
                                runSpacing: AppInsets.padding4,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                alignment: WrapAlignment.start,
                                children: children
                                    .map(
                                      (e) => SizedBox(
                                        width: 70,
                                        height: 50,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              AppBorderRadius.medium),
                                          child: e,
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ),
                        if (button != null)
                          SizedBox(
                            width: double.infinity,
                            child: button,
                          )
                      ],
                    );
                  },
                  placeholderWidget: InputDecorator(
                    decoration: InputDecoration(
                      enabledBorder: DashInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppBorderRadius.large),
                        dashWidth: 10,
                        dashSpace: 10,
                        borderSide: BorderSide(
                          width: 2.0,
                          color: ColorScheme.of(context).primary,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      height: 78.0,
                      child: Center(
                        child: Icon(
                          DerevenkaDobrenkaIcons.image,
                          color: Color(0xFF6D6D6D),
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  cameraIcon: const Icon(
                    DerevenkaDobrenkaIcons.camera,
                  ),
                  galleryIcon: const Icon(
                    DerevenkaDobrenkaIcons.image,
                  ),
                  iconColor: ColorScheme.of(context).surfaceContainerHighest,
                  imageQuality: 100,
                  preventPop: true,
                  maxHeight: _imageMaxSize,
                  maxWidth: _imageMaxSize,
                  fit: BoxFit.cover,
                  backgroundColor: Colors.transparent,
                  bottomSheetPadding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewPadding.bottom),
                  previewHeight: AppInsets.padding64,
                  previewWidth: AppInsets.padding64 + AppInsets.padding8,
                  previewMargin:
                      const EdgeInsets.only(left: AppInsets.padding8),
                  name: _FeedbackFormKey.images,
                  previewAutoSizeWidth: false,
                  showDecoration: false,
                  maxImages: 3,
                  cameraLabel: Text(
                    LocaleKeys.feedbackScreen_camera.tr(context: context),
                  ),
                  galleryLabel: Text(
                    LocaleKeys.feedbackScreen_gallery.tr(context: context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSubmit() {
    final state = _formKey.currentState;
    if (state?.saveAndValidate() ?? false) {
      final values = state!.value;

      context.read<ReviewBloc>().add(
            ReviewEvent.submit(
              comment: values[_FeedbackFormKey.comment] as String? ?? '',
              rating: values[_FeedbackFormKey.rating],
              images: (values[_FeedbackFormKey.images] as List<dynamic>?)
                      ?.cast<XFile>() ??
                  [],
            ),
          );
    }
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key, this.textStyle});

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ReviewBloc>().state;
    String? text;
    String? label;

    if (state.store case Store store) {
      label = LocaleKeys.feedbackScreen_store_label.tr(context: context);
      text = LocaleKeys.feedbackScreen_store_text.tr(
        context: context,
        namedArgs: {
          'name': store.name ?? '',
          'address': store.address ?? '',
        },
      );
    } else if (state.product case Product product) {
      label = LocaleKeys.feedbackScreen_product_label.tr(context: context);
      text = LocaleKeys.feedbackScreen_product_text.tr(
        context: context,
        namedArgs: {
          'name': product.name,
        },
      );
    } else if (state.order case AcceptedOrder order) {
      label = LocaleKeys.feedbackScreen_purchase_label.tr(context: context);
      text = LocaleKeys.feedbackScreen_purchase_text.tr(
        context: context,
        namedArgs: {
          'storeName': order.storeName ?? '',
          'storeAddress': order.storeAddress ?? '',
          'date': DateFormat('dd.MM.yyyy HH:mm').format(order.createdDateTime),
        },
      );
    }

    if (label == null && text == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppInsets.padding4,
            ),
            child: Text(
              label,
              style: textStyle,
            ),
          ),
        if (text != null)
          Text(
            text,
            style: TextTheme.of(context).bodyLarge,
          ),
        const Divider()
      ],
    );
  }
}

class FeedbackActionButtonWidget extends StatelessWidget {
  const FeedbackActionButtonWidget({
    super.key,
    required this.onSubmit,
  });

  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewBloc, ReviewState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status != ReviewStateStatus.ready) {
          return const SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: null,
              child: SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator.adaptive(
                  strokeWidth: 2.0,
                ),
              ),
            ),
          );
        }

        return FilledButtonWithArrow(
          onPressed: onSubmit,
          label: Text(
            LocaleKeys.feedbackScreen_send.tr(context: context),
          ),
        );
      },
    );
  }
}

import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderTimeOfDayField extends FormBuilderFieldDecoration<TimeOfDay> {
  final TextStyle? style;

  /// Creates field for international phone number input.
  FormBuilderTimeOfDayField({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.enabled,
    super.onSaved,
    AutovalidateMode super.autovalidateMode = AutovalidateMode.disabled,
    super.onReset,
    super.focusNode,
    super.decoration = const InputDecoration(),
    this.style,
  }) : super(
          builder: (FormFieldState<TimeOfDay?> field) {
            final state = field as _FormBuilderTimeOfDayFieldState;
            final tabs = <Tab>[
              Tab(
                text: state.context.tr(LocaleKeys.confirmOrder_time_soon),
              ),
              Tab(
                text: state.context.tr(LocaleKeys.confirmOrder_time_atTheTime),
              ),
            ];
            final effectiveTextStyle = style ??
                Theme.of(state.context).textTheme.bodyLarge ??
                const TextStyle();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.context.tr(LocaleKeys.confirmOrder_time_pickUpIn),
                  style: Theme.of(state.context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(state.context)
                        .extension<CustomThemeExtension>()!
                        .secondary,
                  ),
                  child: TabBar(
                    indicatorPadding:
                        defaultTargetPlatform == TargetPlatform.iOS
                            ? const EdgeInsets.all(AppInsets.padding2)
                            : EdgeInsets.zero,
                    controller: state._controller,
                    tabs: tabs,
                  ),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                GestureDetector(
                  onTap: () {
                    if (state._current == 1) {
                      state._showTimePicker();
                    }
                  },
                  child: DefaultTextStyle(
                    style: effectiveTextStyle.copyWith(
                      color: Theme.of(state.context)
                          .extension<CustomThemeExtension>()!
                          .textColor,
                    ),
                    child: InputDecorator(
                      decoration: state.decoration.copyWith(
                        labelText: tabs[state._current].text!,
                      ),
                      child: Row(
                        children: [
                          IconTheme.merge(
                            data: IconThemeData(
                              color: state.decoration.prefixIconColor ??
                                  Theme.of(state.context)
                                      .inputDecorationTheme
                                      .prefixIconColor,
                            ),
                            child: const Icon(
                              CustomICons.clock,
                            ),
                          ),
                          const SizedBox(
                            width: AppInsets.padding8,
                          ),
                          Expanded(
                            child: Text(
                              state.context.tr(
                                LocaleKeys.confirmOrder_time_pickUpTime,
                                args: [
                                  state.value?.format(state.context) ?? ''
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        );

  @override
  FormBuilderFieldDecorationState<FormBuilderTimeOfDayField, TimeOfDay>
      createState() => _FormBuilderTimeOfDayFieldState();
}

class _FormBuilderTimeOfDayFieldState extends FormBuilderFieldDecorationState<
    FormBuilderTimeOfDayField, TimeOfDay> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _current = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(_listenController);
  }

  void _listenController() {
    if (_current == _controller.index) {
      return;
    }
    _current = _controller.index;
    if (_current == 0) {
      didChange(initialValue);
      return;
    }
    _showTimePicker();
  }

  Future<void> _showTimePicker() async {
    final result = await showTimePicker(
        initialEntryMode: TimePickerEntryMode.dial,
        context: context,
        initialTime: value ?? TimeOfDay.now(),
        builder: (context, child) {
          return TextButtonTheme(
            data: TextButtonThemeData(
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            child: child!,
          );
        });
    if (result is TimeOfDay) {
      didChange(result);
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_listenController);
    _controller.dispose();
    super.dispose();
  }

  @override
  void reset() {
    super.reset();
    _controller = TabController(length: 2, vsync: this);
  }
}

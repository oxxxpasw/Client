import 'package:collection/collection.dart';
import 'package:sosedifedi/data/models/assortment_response/assortment_response.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/forms/modal_dropdown_field.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/tab_bar_field.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/currency.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ModifierForm extends StatefulWidget {
  const ModifierForm({
    super.key,
    required this.modifierGroups,
    required this.currencySymbol,
  });

  final List<ModifierGroup> modifierGroups;
  final String currencySymbol;

  @override
  State<ModifierForm> createState() => _ModifierFormState();
}

class _ModifierFormState extends State<ModifierForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SeparatedColumn(
      separator: const SizedBox(
        height: AppInsets.padding16,
      ),
      children: widget.modifierGroups
          .map(
            (e) => ModifierItem(
              modifierGroup: e,
              currencySymbol: widget.currencySymbol,
            ),
          )
          .toList(),
    );
  }
}

class ModifierItem extends StatelessWidget {
  const ModifierItem({
    super.key,
    required this.modifierGroup,
    required this.currencySymbol,
  });

  final ModifierGroup modifierGroup;
  final String currencySymbol;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyLarge!;
    switch (modifierGroup.modifierSelectionType) {
      case ModifierSelectionType.toggleSwitch:
        return FormBuilderField<List<Modifier>>(
          name: modifierGroup.id,
          initialValue: modifierGroup.selectedModifiers,
          validator: FormBuilderValidators.compose(
            [
              if (modifierGroup.required) FormBuilderValidators.required(),
              if (modifierGroup.minOptions > 0)
                FormBuilderValidators.minLength(
                  modifierGroup.minOptions,
                  errorText: context.tr(
                      LocaleKeys.products_modifiers_minOptions,
                      args: [modifierGroup.minOptions.toString()]),
                ),
              FormBuilderValidators.maxLength(
                modifierGroup.maxOptions,
                errorText: context.tr(LocaleKeys.products_modifiers_maxOptions,
                    args: [modifierGroup.maxOptions.toString()]),
              ),
            ],
          ),
          valueTransformer: (value) {
            if (value == null) {
              return null;
            }
            return modifierGroup.copyWith(
              selectedModifiers: List.from(value),
            );
          },
          builder: (FormFieldState<List<Modifier>> field) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: modifierGroup.modifiers
                  .map(
                    (modifier) => SwitchListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(modifier.name),
                          ),
                          if (modifier.price != 0.0)
                            Text(
                              '+${Currency.convertToPrice(currencySymbol, modifier.price)}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .extension<CustomThemeExtension>()!
                                        .yellow500,
                                  ),
                            ),
                        ],
                      ),
                      value: field.value?.contains(modifier) ?? false,
                      onChanged: (value) {
                        final List<Modifier> newValue =
                            field.value != null ? List.from(field.value!) : [];
                        if (value) {
                          newValue.add(modifier);
                        } else {
                          newValue.remove(modifier);
                        }
                        field.didChange(newValue);
                      },
                    ),
                  )
                  .toList(),
            );
          },
        );
      case ModifierSelectionType.dropdown:
        return FormBuilderModalDropdownField<Modifier>(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: FormBuilderValidators.compose(
            [
              if (modifierGroup.required) FormBuilderValidators.required(),
              if (modifierGroup.minOptions > 0)
                FormBuilderValidators.minLength(
                  modifierGroup.minOptions,
                  errorText: context.tr(
                      LocaleKeys.products_modifiers_minOptions,
                      args: [modifierGroup.minOptions.toString()]),
                ),
              FormBuilderValidators.maxLength(
                modifierGroup.maxOptions,
                errorText: context.tr(LocaleKeys.products_modifiers_maxOptions,
                    args: [modifierGroup.maxOptions.toString()]),
              ),
            ],
          ),
          minOptions: modifierGroup.minOptions,
          maxOptions: modifierGroup.maxOptions,
          listTitle: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Center(
              child: Text(
                modifierGroup.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          name: modifierGroup.id,
          initialValue: modifierGroup.selectedModifiers,
          valueTransformer: (value) {
            if (value == null) {
              return null;
            }
            return modifierGroup.copyWith(
              selectedModifiers: value,
            );
          },
          decoration: InputDecoration(
            labelText: modifierGroup.name,
            labelStyle:
                Theme.of(context).inputDecorationTheme.labelStyle!.copyWith(
                      fontSize: textStyle.fontSize,
                    ),
            errorMaxLines: 2,
          ),
          style: Theme.of(context).textTheme.bodyLarge,
          buildTitle: (value) {
            if (value == null || value.isEmpty) {
              return const Text('');
            }
            return Text(value.map((e) => e.name).join(', '));
          },
          items: modifierGroup.modifiers
              .map(
                (e) => DropdownMenuItem<Modifier>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(e.name,
                            style: Theme.of(context).textTheme.bodyLarge),
                      ),
                      Text(
                        '+${Currency.convertToPrice(currencySymbol, e.price)}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context)
                                  .extension<CustomThemeExtension>()!
                                  .yellow500,
                            ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      case ModifierSelectionType.switchButton:
        return FormBuilderTabBarField<Modifier>(
          name: modifierGroup.id,
          initialValue: modifierGroup.selectedModifiers.firstOrNull,
          valueTransformer: (value) {
            if (value == null) {
              return null;
            }
            return modifierGroup.copyWith(
              selectedModifiers: [value],
            );
          },
          validator: FormBuilderValidators.compose(
            [
              if (modifierGroup.required) FormBuilderValidators.required(),
            ],
          ),
          items: modifierGroup.modifiers
              .map(
                (e) => TabItem<Modifier>(
                  value: e,
                  child: Text(e.name),
                ),
              )
              .toList(),
        );
    }
  }
}

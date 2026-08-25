import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class SurveyQuestionWidget extends StatelessWidget {
  const SurveyQuestionWidget({
    super.key,
    required this.question,
    this.isLast = false,
    this.answer,
  });

  final SurveyQuestion question;

  final bool isLast;

  final dynamic answer;

  @override
  Widget build(BuildContext context) {
    return _buildField(context);
  }

  Widget _buildField(BuildContext context) {
    final validators = <FormFieldValidator>[];
    if (question.required) {
      validators.add(FormBuilderValidators.required());
    }
    return question.map(
      text: (question) => _buildTextField(
        context: context,
        question: question,
        validators: validators,
      ),
      optionList: (question) => _buildOptionField(
        context: context,
        question: question,
        validators: validators,
      ),
      multipleOptionList: (question) => _buildMultipleOptionField(
        context: context,
        question: question,
        validators: validators,
      ),
      dateTime: (question) => _buildDateTimeField(
        context: context,
        question: question,
        validators: validators,
      ),
      date: (question) => _buildDateField(
        context: context,
        question: question,
        validators: validators,
      ),
    );
  }

  InputDecoration _buildDecoration(BuildContext context) {
    return InputDecoration(
      label: Builder(
        builder: (context) {
          return RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: question.title,
                ),
                if (question.required)
                  TextSpan(
                    text: '*',
                    style: DefaultTextStyle.of(context).style.copyWith(
                          color: Theme.of(context)
                              .extension<CustomThemeExtension>()!
                              .error,
                        ),
                  ),
              ],
            ),
          );
        },
      ),
      helperText: question.tooltip,
      helperMaxLines: 2,
      errorMaxLines: 2,
    );
  }

  TextInputAction _getAction() =>
      isLast ? TextInputAction.done : TextInputAction.next;

  Widget _buildTextField({
    required BuildContext context,
    required TextSurveyQuestion question,
    required List<FormFieldValidator> validators,
  }) {
    return FormBuilderTextField(
      name: question.name,
      decoration: _buildDecoration(context).copyWith(
        hintText: question.hintText,
      ),
      keyboardType: question.textInput,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: _getAction(),
      initialValue: answer?.toString() ?? question.defaultValue,
      valueTransformer: (value) => value?.trim(),
      validator: FormBuilderValidators.compose([
        ...validators,
        if (question.regex != null)
          FormBuilderValidators.match(RegExp(question.regex!.pattern)),
      ]),
    );
  }

  Widget _buildOptionField({
    required BuildContext context,
    required OptionSurveyQuestion question,
    required List<FormFieldValidator> validators,
  }) {
    return FormBuilderDropdown(
      name: question.name,
      decoration: _buildDecoration(context),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: answer?.toString() ??
          question.defaultValue ??
          question.options.firstOrNull,
      items: question.options
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
      validator: FormBuilderValidators.compose(validators),
    );
  }

  Widget _buildMultipleOptionField({
    required BuildContext context,
    required MultipleOptionSurveyQuestion question,
    required List<FormFieldValidator> validators,
  }) {
    final listAnswer = answer is Iterable
        ? (answer as List).whereType<String>().toList()
        : null;
    return FormBuilderCheckboxGroup(
      name: question.name,
      decoration: _buildDecoration(context),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: listAnswer ?? question.defaultValue,
      valueTransformer: (value) =>
          value == null || value.isEmpty ? null : value,
      options: question.options
          .map(
            (e) => FormBuilderFieldOption<String>(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
      validator: FormBuilderValidators.compose(
        [
          ...validators,
          if (question.maxOptionsNumber != null)
            FormBuilderValidators.maxLength<List<String>>(
              question.maxOptionsNumber!,
              errorText: 'Выберите максимум ${question.maxOptionsNumber}',
            ),
          if (question.minOptionsNumber != null &&
              question.minOptionsNumber! > 0)
            FormBuilderValidators.minLength<List<String>>(
              question.minOptionsNumber!,
              errorText: 'Выберите минимум ${question.minOptionsNumber}',
            ),
        ],
      ),
    );
  }

  Widget _buildDateTimeField({
    required BuildContext context,
    required DateTimeSurveyQuestion question,
    required List<FormFieldValidator> validators,
  }) {
    final dateAnswer = answer is String ? DateTime.tryParse(answer) : null;
    return FormBuilderDateTimePicker(
      format: DateFormat('dd.MM.yyyy HH:mm'),
      name: question.name,
      decoration: _buildDecoration(context),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      firstDate: question.minDateTime,
      lastDate: question.maxDateTime,
      initialDate: question.maxDateTime,
      initialValue: dateAnswer ?? question.defaultValue,
      initialTime: TimeOfDay.fromDateTime(
        question.maxDateTime != null ? question.maxDateTime! : DateTime.now(),
      ),
      valueTransformer: (value) => value?.toIso8601String(),
      validator: FormBuilderValidators.compose([
        ...validators,
        (value) {
          if (value == null) {
            return null;
          }
          if (question.minDateTime != null &&
              question.minDateTime!.isAfter(value)) {
            return 'Минимальное значение ${DateFormat('dd.MM.yyyy HH:mm').format(question.minDateTime!)}';
          }
          if (question.maxDateTime != null &&
              question.maxDateTime!.isBefore(value)) {
            return 'Максимальное значение ${DateFormat('dd.MM.yyyy HH:mm').format(question.maxDateTime!)}';
          }
          return null;
        }
      ]),
    );
  }

  Widget _buildDateField({
    required BuildContext context,
    required DateSurveyQuestion question,
    required List<FormFieldValidator> validators,
  }) {
    final dateAnswer = answer is String ? DateTime.tryParse(answer) : null;
    return FormBuilderDateTimePicker(
      format: DateFormat('dd.MM.yyyy'),
      name: question.name,
      decoration: _buildDecoration(context),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      firstDate: question.minDate,
      lastDate: question.maxDate,
      initialDate: question.maxDate,
      initialValue: dateAnswer ?? question.defaultValue,
      inputType: InputType.date,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
      valueTransformer: (value) => value?.toIso8601String(),
      validator: FormBuilderValidators.compose([
        ...validators,
        (value) {
          if (value == null) {
            return null;
          }
          if (question.minDate != null && question.minDate!.isAfter(value)) {
            return 'Минимальное значение ${DateFormat('dd.MM.yyyy').format(question.minDate!)}';
          }
          if (question.maxDate != null && question.maxDate!.isBefore(value)) {
            return 'Максимальное значение ${DateFormat('dd.MM.yyyy').format(question.maxDate!)}';
          }
          return null;
        }
      ]),
    );
  }
}

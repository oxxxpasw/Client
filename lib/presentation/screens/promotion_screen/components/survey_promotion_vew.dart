import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sosedifedi/data/models/customer_account_enum/customer_account_enum.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/domain/bloc/promotion_details_bloc/promotion_details_bloc.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import 'promotion_html.dart';
import 'survey_question.dart';

class SurveyPromotionView extends StatelessWidget {
  SurveyPromotionView({
    super.key,
    required this.promotion,
    this.isSending = false,
  });

  final SurveyPromotion promotion;
  final bool isSending;
  final _formKey = GlobalKey<FormBuilderState>();
  final _buttonController = MaterialStatesController();

  @override
  Widget build(BuildContext context) {
    checkValidation();
    final questions = promotion.activity.questions;
    final answers = promotion.activityResult?.answers;
    return FormBuilder(
      key: _formKey,
      onChanged: () => checkValidation(),
      enabled: promotion.activityStatus == PromotionActivityStatus.notConducted,
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                if (promotion.htmlContent != null)
                  SliverToBoxAdapter(
                    child: SelectionArea(
                      child: PromotionHtml(
                        html: promotion.htmlContent!,
                      ),
                    ),
                  ),
                if (promotion.activityStatus ==
                    PromotionActivityStatus.notConducted)
                  SliverPadding(
                    padding: const EdgeInsets.all(AppInsets.padding16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final int itemIndex = index ~/ 2;
                          if (index.isEven) {
                            final question = questions[itemIndex];
                            return SurveyQuestionWidget(
                              question: question,
                              isLast: itemIndex + 1 == questions.length,
                              answer: answers?[question.name],
                            );
                          } else {
                            return const SizedBox(
                              height: AppInsets.padding16,
                            );
                          }
                        },
                        childCount: math.max(0, questions.length * 2 - 1),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(AppInsets.padding16),
            width: double.infinity,
            child: _buildBottomBarContent(context),
          ),
        ],
      ),
    );
  }

  void checkValidation() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!(_formKey.currentState?.isValid ?? true)) {
        _buttonController.value = {
          ..._buttonController.value,
          MaterialState.disabled,
        };
        return;
      }
      _buttonController.value = _buttonController.value
          .where(
            (element) => element != MaterialState.disabled,
          )
          .toSet();
    });
  }

  Widget _buildBottomBarContent(BuildContext context) {
    if (promotion.activityStatus == PromotionActivityStatus.notConducted) {
      return _buildSubmitButton(context);
    }
    if (promotion.activityStatus == PromotionActivityStatus.unknown) {
      return Center(
        child: Text(
          'Недоступен',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      );
    }
    return Center(
      child: FittedBox(
        child: Text(
          promotion.activity.surveyAlreadyCompletedText ?? 'Опрос пройден',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return TextButton(
      statesController: _buttonController,
      onPressed: () {
        if (!isSending && _formKey.currentState!.saveAndValidate()) {
          context
              .read<PromotionDetailsBloc>()
              .setPromotionResult(promotion.id, _formKey.currentState!.value);
        }
      },
      child: isSending
          ? SizedBox(
              height: AppInsets.padding16,
              width: AppInsets.padding16,
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
                strokeWidth: 2.0,
              ),
            )
          : FittedBox(
              child: Text(
                promotion.activity.sendSurveyResultButtonText ?? 'Отправить',
              ),
            ),
    );
  }
}

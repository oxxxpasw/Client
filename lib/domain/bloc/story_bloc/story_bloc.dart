import 'dart:async';
import 'dart:convert';

import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/models/story/story.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:collection/collection.dart';

part 'story_state.dart';
part 'story_bloc.freezed.dart';

@injectable
class StoryBloc extends SrCubit<StoryState, StorySr> {
  StoryBloc({
    required this.analystService,
    required this.customerAccountRepository,
  }) : super(const StoryState());

  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  AnalystService analystService;

  BehaviorSubject<double>? _subject;

  Ticker? _ticker;

  Future<void> loadData(String promotionId) async {
    if (isClosed) {
      return;
    }
    _subject?.close();
    _ticker?.dispose();
    emit(
      state.copyWith(status: StoryStatus.loading),
    );
    final response = await customerAccountRepository.getPromotion(promotionId);
    if (response.hasError) {
      addError(response.error);
      addSr(StorySr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    final storyData = await compute(storyDataFromPromotion, response.result);

    emit(
      state.copyWith(
        status: StoryStatus.ready,
        story: storyData,
        current: storyData.stories.firstOrNull,
      ),
    );
  }

  static StoryData storyDataFromPromotion(Promotion promotion) {
    Story getStory(String data) {
      final html = HtmlParser.parseHTML(data);

      final images = html.getElementsByTagName('img');
      for (final image in images) {
        image.remove();
      }
      final String? url = images.firstOrNull?.attributes['src'];
      final bool isBase64 = url != null && url.startsWith('data:image');
      
      Uint8List? bytes;
      try {
        bytes = isBase64 ? base64.decode(url.split(',').last) : null;
      } catch (e) {
        bytes = null;
      }
      
      final String? imageUrl = (!isBase64 && url != null && url.startsWith('http')) ? url : null;

      return Story(
        image: bytes ?? Uint8List(0),
        imageUrl: imageUrl,
        html: html,
      );
    }

    return StoryData(
      id: promotion.id,
      stories: promotion.htmlContent
              ?.split('<p>--------</p>')
              .map((e) => getStory(e))
              .toList() ??
          [],
    );
  }

  void next() {
    if (state.story == null || state.current == null) {
      addSr(const StorySr.nextStory());
      return;
    }
    final storyData = state.story!;
    final index = storyData.stories.indexOf(state.current!);
    if (index < storyData.stories.length - 1) {
      emit(state.copyWith(current: storyData.stories[index + 1]));
      return;
    }
    addSr(const StorySr.nextStory());
  }

  void previous() {
    if (state.story == null || state.current == null) {
      addSr(const StorySr.previousStory());
      return;
    }
    assert(state.story != null && state.current != null);
    final storyData = state.story!;
    final index = storyData.stories.indexOf(state.current!);
    if (index > 0) {
      emit(state.copyWith(current: storyData.stories[index - 1]));
      return;
    }
    addSr(const StorySr.previousStory());
  }
}
